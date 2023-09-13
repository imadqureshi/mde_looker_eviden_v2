view: oee_overview {
  derived_table: {
    sql:
    with base as (SELECT
id,
tag_name,
event_timestamp,
FORMAT_TIMESTAMP('%F %T', event_timestamp, 'UTC') AS event_timestamp_key,
value,
JSON_EXTRACT_SCALAR(embedded_metadata, '$.description') AS description ,
JSON_EXTRACT_SCALAR(embedded_metadata, '$.deviceID') AS deviceID ,
JSON_EXTRACT_SCALAR(embedded_metadata, '$.deviceName') AS deviceName ,
JSON_EXTRACT_SCALAR(embedded_metadata, '$.metadata.line') AS line ,
JSON_EXTRACT_SCALAR(embedded_metadata, '$.metadata.maintenance') AS maintenance ,
JSON_EXTRACT_SCALAR(embedded_metadata, '$.metadata.name') AS name ,
JSON_EXTRACT_SCALAR(JSON_EXTRACT(embedded_metadata, '$.metadata'), '$.asset') AS asset ,
JSON_EXTRACT_SCALAR(JSON_EXTRACT(embedded_metadata, '$.metadata'), '$.site') AS site ,
JSON_EXTRACT_SCALAR(JSON_EXTRACT(embedded_metadata, '$.metadata'), '$.shift') AS shift,
JSON_EXTRACT_SCALAR(JSON_EXTRACT(embedded_metadata, '$.metadata'), '$.area') AS area ,
CAST(JSON_EXTRACT_SCALAR(embedded_metadata, '$.maxRuntimeBeforeMaintenance') AS NUMERIC) AS maxRuntimeBeforeMaintenance,
CAST(JSON_EXTRACT_SCALAR(embedded_metadata, '$.percentOfMax') AS NUMERIC) AS percentOfMax,
CAST(JSON_EXTRACT_SCALAR(embedded_metadata, '$.runtimeSinceLastMaintenance') AS NUMERIC) AS runtimeSinceLastMaintenance,
CAST(JSON_EXTRACT_SCALAR(embedded_metadata, '$.secondsUntilNextMaintenance') AS NUMERIC) AS secondsUntilNextMaintenance,
FROM `mde-factory-of-future.mde_data.default-numeric-records` WHERE TIMESTAMP_TRUNC(event_timestamp, DAY) > TIMESTAMP("2023-08-24")
AND tag_name IN ("OEE", "Uptime", "TotalPartsMade", "DesignedCycleTime", "Performance", "TotalTime" ,"BadPartsMade", "Availability", "Quality", "CycleTime_Base", "State", "MaintenanceData")
ORDER BY tag_name, event_timestamp),
row_nums as (
SELECT *,  ROW_NUMBER() OVER (PARTITION BY base.asset, tag_name ORDER BY event_timestamp DESC) as row_num,
if (base.percentOfMax >85, 1, 0) as asset_up_for_maintenance
FROM base
)
select * from row_nums
where row_nums.row_num=1 ;;
  }
  dimension: asset_timestamp {
    type: string
    sql: CONCAT(${asset},${TABLE}.event_timestamp_key) ;;
    hidden: yes
  }

  dimension:  id{
    type: string
    primary_key: yes
  }
  dimension:  tag_name{
    type: string
  }
  dimension_group: event_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      hour_of_day,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: timestamp
    convert_tz: yes
  }
  dimension: max_timestamp {
    # type: max
    sql:MAX( ${event_timestamp_raw} );;
  }
  dimension:  deviceID{
    type: string
  }
  dimension:  deviceName{
    type: string
  }
  dimension:  area{
    type: string
  }
  dimension: asset {
    type: string
    html:<p style="background-image: url('https://i0.wp.com/silicontrust.org/wp-content/uploads/2023/04/eviden.jpg?fit=2650%2C1182&ssl=1');  background-size: 100% 100%;"> {{rendered_value}} </p>;;
    #html: <p style="background-color:black"> {{rendered_value}} </p> ;;

    #  map_layer_name: "customGeoJson"
  }
  dimension: enterprise {
    type: string
  }
  dimension:  line{
    type: string
  }
  dimension:  shift{
    type: string
  }
  dimension:  site{
    type: string
  }
  dimension:  maintenance{
    type: string
  }
  dimension:  name{
    type: string
  }
  dimension: value {
    type: number
  }
  dimension: shift_of_day {
    type: string
    sql: CONCAT(${event_timestamp_date},${shift}) ;;
  }
  measure: oee_value {
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "OEE"]
    value_format_name: decimal_2
  }
  measure: performance_value {
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "Performance"]
    value_format_name: decimal_2
  }
  measure: availability_value {
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "Availability"]
    value_format_name: decimal_2
  }
  measure: quality_value {
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "Quality"]
    value_format_name: decimal_2
  }
  measure: oee_calc {
    label: "OEE"
    type: average
    sql: ${TABLE}.value/100 ;;
    filters: [tag_name: "OEE"]
    value_format_name: percent_1
    # type: number
    # sql: ${performance_calc} * ${availability_calc} * ${quality_calc} ;;
    # value_format_name: percent_1
  }
  measure: oee_calc_kpi {
    sql: ${oee_calc} ;;
    value_format_name: percent_1
    html: <a href="https://mavenwave.looker.com/dashboards/756" style="text-decoration:underline" title="Click here to go to the OEE Detail Dashboard" target="_blank"> {{rendered_value}}</a> ;;
  }
  # measure: oee_calc_kpi_assembly {
  #   type: number
  #   sql: ${performance_calc} * ${availability_calc} * ${quality_calc} ;;
  #   value_format_name: percent_1
  #   html: <a href="https://mavenwave.looker.com/dashboards/756" style="text-decoration:underline" title="Click here to go to the OEE Detail Dashboard" target="_blank">{{rendered_value}}</a> ;;
  #   filters: [asset: "Assembly Robot 001, Assembly Robot 002"]
  # }
  # measure: oee_calc_kpi_assembly {
  #   type: number
  #   sql: ${oee_calc} ;;
  #   value_format_name: percent_1
  #   html: <a href="https://mavenwave.looker.com/dashboards/756" style="text-decoration:underline" title="Click here to go to the OEE Detail Dashboard" target="_blank">{{rendered_value}}</a> ;;
  #   filters: [asset: "Assembly Robot 001, Assembly Robot 002"]
  # }
  measure: oee_target {
    type: number
    sql: 1 ;;
    value_format_name: percent_2

  }
  measure: performance_calc {
    label: "Performance"
    type: average
    sql: ${TABLE}.value/100 ;;
    filters: [tag_name: "Performance"]
    value_format_name: percent_1
    #Updating to tag_name reference, not using calc anymore - 09/13/23
  }

  measure: availability_calc {
    label: "Availability"
    type: average
    sql: ${TABLE}.value/100 ;;
    filters: [tag_name: "Availability"]
    value_format_name: percent_1
    # type: number
    # sql: ${uptime}/${total_time} ;;
    # value_format_name: percent_1
    #Updating to tag_name reference, not using calc anymore - 09/13/23
  }

  measure: quality_calc {
    label: "Quality"
    type: average
    sql: ${TABLE}.value/100 ;;
    filters: [tag_name: "Quality"]
    value_format_name: percent_1
    #Updating to tag_name reference, not using calc anymore - 09/13/23
    # type: number
    # sql: (${total_parts_made}-${bad_parts_made})/${total_parts_made} ;;
    # value_format_name: percent_1
  }
  measure: designed_cycle_time {
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "DesignedCycleTime"]
    value_format_name: decimal_1
  }
  measure: total_parts_made {
    type: max
    sql: ${TABLE}.value ;;
    filters: [tag_name: "TotalPartsMade"]
    value_format_name: decimal_0
  }
  measure: total_parts_made_overview {
    type: sum
    sql: ${TABLE}.value ;;
    filters: [tag_name: "TotalPartsMade"]
    value_format_name: decimal_0
  }
  measure: bad_parts_made_overview {
    type: sum
    sql: ${TABLE}.value ;;
    filters: [tag_name: "BadPartsMade"]
    value_format_name: decimal_0
  }
  measure: uptime {
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "Uptime"]
    value_format_name: decimal_0
    html: {% assign h= value | divided_by: 3600 %}
      {{h | round:1}};;
  }
  measure: total_time {
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "TotalTime"]
    value_format_name: decimal_0
  }
  measure: bad_parts_made {
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "BadPartsMade"]
    value_format_name: decimal_0
  }
  measure: state_value {
    type: min
    sql: ${TABLE}.value ;;
    filters: [tag_name: "State"]
    value_format_name: decimal_0
  }
  measure: state {
    type: string
    sql: if (${state_value}=1, "Running", "Not Running") ;;

  }
  measure: cycle_time_per_part {
    type: number
    sql: ${uptime}/${total_parts_made}  ;;
    value_format_name: decimal_1
  }

  measure: maxRuntimeBeforeMaintenance {
    type: average
    sql: ${TABLE}.maxRuntimeBeforeMaintenance ;;
    value_format_name: decimal_0
  }

  measure: percentOfMax {
    type: average
    sql: ${TABLE}.percentOfMax /100  ;;
    value_format_name: percent_1
  }
  measure: runtime_since_last_maintenance {
    type: average
    sql: ${TABLE}.runtimeSinceLastMaintenance /86400;;
    value_format_name: decimal_1
  }
  measure: runtime_until_next_maintenance {
    type: average
    sql: ${TABLE}.secondsUntilNextMaintenance /86400 ;;
    value_format_name: decimal_1
    html:
    {% if percentOfMax._value<0.80 %}
    <p style ="color:#EE7772"> {{rendered_value}} </p>
    {% elsif percentOfMax._value>0.90 %}
    <p style ="color:#7FCDAE"> {{rendered_value}} </p>
    {% else %}
    <p style ="color:#ffed6f"> {{rendered_value}} </p>
    {% endif %}
    ;;
  }

  dimension: tbl_img_robotic_arm1 {
    sql:"Assembly Robot" ;;
    link: {
      url: "http://google.com"
    }
    html:
     <table style="width:100%; ">
     <tr style="margin-top: 0; padding-top:0;line-height: 20px;height: 20px">
    <td style="text-align:center; font-size:1.125rem; font-weight:400">{{rendered_value| split: "," |slice: 0}}</td>
    </tr>
    <tr>
    <td><img src = "https://storage.cloud.google.com/@{bucket_name}/@{assembly_robot_img_name}" style="height:200px; width:250px"  ></td>
    </tr>
    </table>
    ;;
  }

  dimension: tbl_img_material_handling_robot1 {
    sql:"Material Handling Robot" ;;
    html:
     <table style="width:100%; ">
     <tr style="margin-top: 0; padding-top:0;line-height: 20px;height: 20px">
    <td style="text-align:center; font-size:1.125rem; font-weight:400">{{rendered_value| split: "," |slice: 0}}</td>
    </tr>
    <tr>
    <td><img src = "https://storage.cloud.google.com/@{bucket_name}/@{material_handling_robot_img_name}" style="height:200px; width:250px"  ></td>
    </tr>
    </table>
    ;;
  }
  dimension: tbl_img_plant {
    sql:"Factory Floor" ;;
    html:
    <table style="width:100%; ">
    <tr style="margin-top: 0; padding-top:0;line-height: 20px;height: 20px">
    <td style="text-align:center; font-size:1.125rem; font-weight:400">{{rendered_value| split: "," |slice: 0}}</td>
    </tr>
    <tr>
    <td><img src = "https://storage.cloud.google.com/@{bucket_name}/@{factory_floor_img_name}" style="height:200px; width:250px"  ></td>
    </tr>
    </table>
    ;;
  }
  dimension: tbl_img_mini_mill{
    sql:"Mini Mill" ;;
    html:
     <table style="width:100%; ">
     <tr style="margin-top: 0; padding-top:0;line-height: 20px;height: 20px">
    <td style="text-align:center; font-size:1.125rem; font-weight:400">{{rendered_value| split: "," |slice: 0}}</td>
    </tr>
    <tr>
    <td><img src = "https://storage.cloud.google.com/@{bucket_name}/@{mini_mill_img_name}" style="height:200px; width:250px"  ></td>
    </tr>
    </table>
    ;;
  }
  dimension: tbl_img_visual_inspection_robot{
    sql:"Visual Inspection Robot" ;;
    html:
     <table style="width:100%; ">
     <tr style="margin-top: 0; padding-top:0;line-height: 20px;height: 20px">
    <td style="text-align:center; font-size:1.125rem; font-weight:400">{{rendered_value| split: "," |slice: 0}}</td>
    </tr>
    <tr>
    <td><img src = "https://storage.cloud.google.com/@{bucket_name}/@{visual_inspection_robot_img_name}" style="height:200px; width:250px"  ></td>
    </tr>
    </table>
    ;;
  }
  dimension: tbl_img_5_axis_cnc{
    sql:"5-axis CNC" ;;
    html:
     <table style="width:100%; ">
     <tr style="margin-top: 0; padding-top:0;line-height: 20px;height: 20px">
    <td style="text-align:center; font-size:1.125rem; font-weight:400">{{rendered_value| split: "," |slice: 0}}</td>
    </tr>
    <tr>
    <td><img src = "https://storage.cloud.google.com/@{bucket_name}/@{cnc_img_name}" style="height:200px; width:250px"  ></td>
    </tr>
    </table>
    ;;
  }
  dimension: plant_title_text {
    sql: "" ;;
    html:
    <table style="width:100%; ">
     <tr style="margin-top: 0; padding-top:0;line-height: 16px;height: 16px">
    <td style="text-align:center; font-size:1.75rem; font-weight:400">OEE at the Plant Level </td>
    </tr>
    </table>
    ;;
  }
  measure: mtbf {
    sql: "4823.2" ;;
    type: number
    html: <a href="https://eviden.com" style="text-decoration:underline" title="Click here to go to the Maintenance Dashboard" target="_blank">{{rendered_value}}</a> ;;
  }

  measure: assets_up_for_maintenance {
    sql: ${TABLE}.asset_up_for_maintenance ;;
    type: sum
    value_format_name: decimal_0
  }

  measure: mtbf_placeholder_assembly {
    sql: "243" ;;
    #html: <p style ="color:red"> {{rendered_value}} </p> ;;
  }
  measure: mtbf_placeholder_material {
    sql: "32" ;;
    # html: <p style ="color:green"> {{rendered_value}} </p> ;;
  }
  measure: mtbf_placeholder_inspection {
    sql: "165" ;;
    #html: <p style ="color:green"> {{rendered_value}} </p> ;;
  }
  measure: mtbf_placeholder_mills {
    sql: "177" ;;
    # html: <p style ="color:red"> {{rendered_value}} </p> ;;
  }
  measure: mtbf_placeholder_cnc {
    sql: "198" ;;
    #  html: <p style ="color:orange"> {{rendered_value}} </p> ;;
  }
  measure: mttr_placeholder_assembly {
    sql: "1.5" ;;
    #html: <p style ="color:red"> {{rendered_value}} </p> ;;
  }
  measure: mttr_placeholder_material {
    sql: "2.8" ;;
    # html: <p style ="color:green"> {{rendered_value}} </p> ;;
  }
  measure: mttr_placeholder_inspection {
    sql: "4.2" ;;
    #  html: <p style ="color:green"> {{rendered_value}} </p> ;;
  }
  measure: mttr_placeholder_mills {
    sql: "1.3" ;;
    # html: <p style ="color:red"> {{rendered_value}} </p> ;;
  }
  measure: mttr_placeholder_cnc {
    sql: "2.7" ;;
    # html: <p style ="color:orange"> {{rendered_value}} </p> ;;
  }



}
