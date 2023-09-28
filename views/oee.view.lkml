view: oee {
  derived_table: {
    sql: SELECT
      id,
      tag_name,
      type_version,
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
      LEFT(JSON_EXTRACT_SCALAR(JSON_EXTRACT(embedded_metadata, '$.metadata'), '$.shift'),1) AS shift,
      CONCAT(EXTRACT (DATE FROM event_timestamp)," Shift ",LEFT(JSON_EXTRACT_SCALAR(JSON_EXTRACT(embedded_metadata, '$.metadata'), '$.shift'),1))  as shift_of_day,
      JSON_EXTRACT_SCALAR(embedded_metadata, '$.anomaly') as anomaly,
      JSON_EXTRACT_SCALAR(embedded_metadata, '$.movingAverage') as partsSize,
      CAST(JSON_EXTRACT_SCALAR(embedded_metadata, '$.maxRuntimeBeforeMaintenance') AS NUMERIC) AS maxRuntimeBeforeMaintenance,
      CAST(JSON_EXTRACT_SCALAR(embedded_metadata, '$.percentOfMax') AS NUMERIC) AS percentOfMax,
      CAST(JSON_EXTRACT_SCALAR(embedded_metadata, '$.runtimeSinceLastMaintenance') AS NUMERIC) AS runtimeSinceLastMaintenance,
      CAST(JSON_EXTRACT_SCALAR(embedded_metadata, '$.secondsUntilNextMaintenance') AS NUMERIC) AS secondsUntilNextMaintenance,
      FROM `ageless-span-396219.mde_data.default-numeric-records`
      WHERE TIMESTAMP_TRUNC(event_timestamp, DAY) > TIMESTAMP_TRUNC(TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL -3 DAY),DAY)
      ORDER BY tag_name, event_timestamp ;;
  }

  dimension: asset_timestamp {
    type: string
    sql: CONCAT(${asset},${TABLE}.event_timestamp_key) ;;
    hidden: no
  }
  dimension:  id{
    type: string
    primary_key: yes
  }
  dimension:  tag_name{
    type: string
  }
  dimension_group: max_timestamp_diff {
    type: duration
    datatype: datetime
    sql_start: ${event_timestamp_raw} ;;
    sql_end: ${max_timestamp.max_timestamp_raw} ;;
    intervals: [
      second,
      minute,
      hour,
      day
    ]
  }
  dimension: shift_of_day_unformatted {
    type: string
    sql:CONCAT(${event_timestamp_date}, ${shift})  ;;
    hidden: no
  }
  dimension: latest_shift_check {
    type: yesno
    sql: ${shift_of_day_unformatted}=${max_shift.max_shift_of_day} ;;
  }
  dimension_group: event_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      hour_of_day,
      minute30,
      minute15,
      minute,
      second,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: timestamp
    convert_tz: yes
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
  }
  dimension: enterprise {
    type: string
  }
  dimension:  line{
    type: string
  }
  dimension:  shift{
    type: string
    sql:${TABLE}.shift ;; #Getting just first char to avoid 1.0 issue, happens intermittently - 09/14
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
    #sql: CONCAT(${event_timestamp_date},${shift}) ;;
    sql: ${TABLE}.shift_of_day ;;
  }
  dimension: latest_shift_of_day {
    type: string
    sql: MAX(${shift_of_day})  ;;
  }
  dimension: shift_filter {
    type: yesno
    sql: ${shift_of_day} = ${latest_shift_of_day} ;;
  }

  # filter: shift_filter {
  #   type: string
  # }
  # dimension: latest_shift_filter {
  #   type: yesno
  #   hidden: yes
  #   sql: {% condition shift_filter %} ${latest_shift_of_day} {% endcondition %} ;;
  # }
  measure: avg_value {
    type: average
    sql: ${TABLE}.value ;;
    value_format_name: decimal_1
  }
  measure: oee_value {
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "OEE"]
    value_format_name: decimal_1
  }
  measure: isRunning {
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "isRunning"]
    value_format_name: decimal_0
  }
  measure: isFaulted {
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "isFaulted"]
    value_format_name: decimal_0
  }

  measure: isFaultedSum {
    type: sum
    sql: ${TABLE}.value ;;
    filters: [tag_name: "isFaulted"]
    value_format_name: decimal_0
  }
  measure: performance_value {
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "Performance"]
    value_format_name: decimal_1
  }
  measure: designed_cylce_time {
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "DesignedCycleTime"]
    value_format_name: decimal_1
  }
  measure: cycle_time_per_part {
    type: number
    sql: ${uptime}*3600/${total_parts_made}  ;;
    value_format_name: decimal_1
  }
  measure: total_parts_made {
    type: max
    sql: ${TABLE}.value ;;
    filters: [tag_name: "TotalPartsMade"]
    value_format_name: decimal_0
  }
  measure: uptime {
    type: max
    sql: ${TABLE}.value /3600;;
    filters: [tag_name: "Uptime"]
    # html: {% assign h= value | divided_by: 3600 %}
    # {{h | round:1}};;
    value_format_name: decimal_1
  }
  measure: total_time {
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "TotalTime"]
    value_format_name: decimal_1
  }
  measure: bad_parts_made {
    type: max
    sql: ${TABLE}.value ;;
    filters: [tag_name: "BadPartsMade"]
    value_format_name: decimal_0
  }
  measure: lowerLimit {
    type: average
    sql: ${TABLE}.value ;;
  }
  measure: state_value {
    sql: ${TABLE}.value;;
    type: min
    filters: [tag_name: "State"]
    value_format_name: decimal_0
  }
  dimension: logo {
    type: string
    #sql: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTybIjoaFgW2he3DDzCoGMuvJcLh5D_YfZbJfnFOnP_ibE9P995xF-DB4718iuOqkShP94&usqp=CAU" ;;
    sql: "https://storage.cloud.google.com/mde-factory-future-looker-bucketv2/anomaly_visual_inspection.png" ;;
    html:<img src = {{rendered_value}} height="150" width="150">;;
  }

  measure: AnomalyDetection {
    label: "Part Size"
    type: average
    sql: ${TABLE}.value ;;
    filters: [tag_name: "AnomalyDetection"]
    value_format_name: decimal_4
    # html: {% if AnomalyDetection._value>=51.0000 %}
    #       {{rendered_value}} <img src = {{logo._rendered_value}} height="150" width="150">
    #       {% else %}
    #       {{rendered_value}}
    #       {% endif %};;
  }
  dimension: Anomaly {
    type: number
    sql: CAST(${TABLE}.anomaly AS FLOAT64) ;;
    hidden: no
  }
  # measure: partsSize {
  #   type: number
  #   sql: ${TABLE}.value ;;
  #   filters: [tag_name: "AnomalyDetection"]
  #   hidden: yes
  # }
  dimension: part_size_tiers {
    type: tier
    style: relational
    tiers: [46, 46.5, 47, 47.5, 48, 48.5, 49.5, 50, 50.5, 51, 51.5, 52, 52.5, 53]
    sql: ${value} ;;
  }
  measure: parts_size_readings_count {
    type: count
    #sql: ${TABLE}.value ;;
    filters: [tag_name: "AnomalyDetection"]

  }
  measure: anomaly_count {
    type: count
    #sql:  ${Anomaly};;
    filters: [Anomaly: ">0"]
  }
  measure: AnomalyRecorded {
    label: "Outlier"
    type: average
    sql: ${Anomaly} ;;
    filters: [Anomaly: ">0"]
    html:   {{rendered_value}} <img src = {{logo._rendered_value}} height="150" width="150">  ;;
  }


#   measure: count_dynamic_status {
#     type: count
#     filters: [latest_shift_filter: "yes"]
#   }
# measure: AnomalyRecordedThisShift{
#   sql: ${AnomalyRecorded} ;;
#   filters: [shift_of_day: ""]
# }
  measure: temperature {
    label: "Temperature (C)"
    type: average
    sql: ${TABLE}.value;;
    filters:[tag_name:"Temperature"]
    value_format_name: decimal_1
  }
  measure: current_warnings {
    type: count
    filters: [tag_name:"Current", value: ">10.5"]
  }
#Testing
# parameter: max_shift_param {
#   default_value: ""
# }
  filter: max_shift_filter {
    default_value: ""
    type: string
    suggest_explore: oee
    suggest_dimension: shift_of_day
  }
  dimension: hidden_shift_of_day_filter {
    hidden: yes
    type: yesno
    sql: {% condition max_shift_filter %} ${shift_of_day} {% endcondition %} ;;
  }
  measure: current_warnings_latest_shift {
    type: count
    filters: [tag_name:"Current", value: ">11 OR <9", latest_shift_check: "yes"]
  }

  measure: current_warnings_last_5_mins {
    type: count
    filters: [tag_name:"Current", value: ">11 OR <9", minutes_max_timestamp_diff: "<=5"]
  }
  measure: voltage_warnings_latest_shift {
    type: count
    filters: [tag_name:"Voltage", value: ">55 OR <45", latest_shift_check: "yes"]
  }
  measure: pressure_warnings_latest_shift {
    type: count
    filters: [tag_name:"Pressure", value: ">70 OR <55", latest_shift_check: "yes"]
  }
  measure: pressure_warnings_last_5_mins {
    type: count
    filters: [tag_name:"Pressure", value: ">70 OR <55", minutes_max_timestamp_diff:  "<=5"]
  }
  measure: pressure_warnings {
    type: count
    filters: [tag_name:"Pressure", value: ">70 OR <55"]
  }
  measure: speed_warnings_latest_shift {
    type: count
    filters: [tag_name:"Speed", value: ">105 OR <0", latest_shift_check: "yes"]
  }
  measure: speed_warnings_last_5_mins  {
    type: count
    filters: [tag_name:"Speed", value: ">100 OR <0", minutes_max_timestamp_diff: "<=5"]
  }
  measure: temperature_warnings_latest_shift {
    type: count
    filters: [tag_name:"Temperature", value: ">25 OR <15", latest_shift_check: "yes"]
  }
  measure: total_warnings_latest_shift {
    type: number
    sql: ${current_warnings_latest_shift}+${voltage_warnings_latest_shift}+${speed_warnings_latest_shift}+${pressure_warnings_latest_shift}+${temperature_warnings_latest_shift} ;;
  }
  measure: pressure {
    label: "Pressure (psi)"
    type: average
    sql: ${TABLE}.value;;
    filters:[tag_name:"Pressure"]
    value_format_name: decimal_1
  }
  measure: current {
    label: "Current (A)"
    type: average
    sql: ${TABLE}.value;;
    filters:[tag_name:"Current"]
    value_format_name: decimal_1
  }
  measure: speed {
    label: "Speed (rpm)"
    type: average
    sql: COALESCE(${TABLE}.value, 0);;
    filters:[tag_name:"Speed"]
    value_format_name: decimal_1
  }
  measure: voltage {
    label: "Voltage (V)"
    type: average
    sql: ${TABLE}.value;;
    filters:[tag_name:"Voltage"]
    value_format_name: decimal_1
  }
# measure: partSize_testresult_count {
#   type: count_distinct
#   sql: ${PartSize_TestResult} ;;
# }
# dimension: partsize_result {
#   type: number
#   sql: ${PartSize_TestResult} ;;
# }

# dimension: partsize_buckets  {
#   type: tier
#   style: classic
#   tiers: [48,49,50,51]
#   sql: ${partsize_result} ;;
# }
  measure: state {
    type: string
    sql: if (${state_value}=1, "Running", "Not Running") ;;

  }
  measure: anomaly_dd{
    sql: ${anomaly_count} ;;
    html: <a href="https://google.com" target="_blank">{{rendered_value}}</a> ;;
  }
  measure: maxRuntimeBeforeMaintenance {
    type: average
    sql: ${TABLE}.maxRuntimeBeforeMaintenance ;;
    value_format_name: decimal_0
  }

  measure: percentOfMax {
    type: average
    sql: ${TABLE}.percentOfMax  ;;
    value_format_name: decimal_1
  }
  measure: runtime_since_last_maintenance {
    type: average
    sql: ${TABLE}.runtimeSinceLastMaintenance ;;
    value_format_name: decimal_0
  }
  measure: runtime_until_next_maintenance {
    type: average
    sql: ${TABLE}.secondsUntilNextMaintenance ;;
    value_format_name: decimal_0
  }

  measure: process_metrics_plant_warnings_placeholder {
    sql: "43" ;;
    html: <p style ="color:orange"> {{value}} </p> ;;
  }
  measure: process_metrics_warnings_placeholder_assembly {
    sql: "12" ;;
    html: <p style ="color:red"> {{rendered_value}} </p> ;;
  }
  measure: process_metrics_warnings_placeholder_material {
    sql: "5" ;;
    html: <p style ="color:green"> {{rendered_value}} </p> ;;
  }
  measure: process_metrics_warnings_placeholder_inspection {
    sql: "3" ;;
    html: <p style ="color:green"> {{rendered_value}} </p> ;;
  }
  measure: process_metrics_warnings_placeholder_mills {
    sql: "17" ;;
    html: <p style ="color:red"> {{rendered_value}} </p> ;;
  }
  measure: process_metrics_warnings_placeholder_cnc {
    sql: 8 ;;
    # html: {% if rendered_value<10 %}
    # <p style ="background:red"> {{rendered_value}} </p>
    # {% elsif rendered_value==10 %}
    # <p style ="background:yellow"> {{rendered_value}} </p>
    # {% else %}
    # <p style ="background:green"> {{rendered_value}} </p>
    # {% endif %}
    # ;;
  }


# measure: performance_value {
#   type: average
#   sql: ${TABLE}.value ;;
#   filters: [tag_name: "Performance"]
#   value_format_name: decimal_1
# }
}
