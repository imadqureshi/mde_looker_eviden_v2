view: maintenance {
  derived_table: {
    sql:
      WITH oee AS (SELECT
    id,
    tag_name,
    type_version,
    event_timestamp,
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
    JSON_EXTRACT_SCALAR(embedded_metadata, '$.anomaly') as anomaly,
    JSON_EXTRACT_SCALAR(embedded_metadata, '$.movingAverage') as partsSize,
    CAST(JSON_EXTRACT_SCALAR(embedded_metadata, '$.maxRuntimeBeforeMaintenance') AS NUMERIC) AS maxRuntimeBeforeMaintenance,
    CAST(JSON_EXTRACT_SCALAR(embedded_metadata, '$.percentOfMax') AS NUMERIC) AS percentOfMax,
    CAST(JSON_EXTRACT_SCALAR(embedded_metadata, '$.runtimeSinceLastMaintenance') AS NUMERIC) AS runtimeSinceLastMaintenance,
    CAST(JSON_EXTRACT_SCALAR(embedded_metadata, '$.secondsUntilNextMaintenance') AS NUMERIC) AS secondsUntilNextMaintenance,
    FROM `mde-factory-of-future.mde_data.default-numeric-records`
    WHERE TIMESTAMP_TRUNC(event_timestamp, DAY) > TIMESTAMP_TRUNC(TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL -3 DAY),DAY)
    ORDER BY tag_name, event_timestamp ),
    base as (
    SELECT

            (FORMAT_TIMESTAMP('%F %T', oee.event_timestamp, 'UTC')) AS oee_event_timestamp_time,
             oee.asset AS oee_asset,
        MIN(CASE WHEN (( oee.tag_name ) = 'isRunning') THEN oee.value  ELSE NULL END) AS oee_isrunning_1,
        MIN(CASE WHEN (( oee.tag_name ) = 'isFaulted') THEN oee.value  ELSE NULL END) AS oee_isfaulted_1,

    FROM oee
   -- WHERE ((( oee.event_timestamp ) >= (TIMESTAMP('2023-09-14 12:23:01', 'America/Chicago')) AND ( oee.event_timestamp ) < (TIMESTAMP('2023-09-14 12:30:29', 'America/Chicago'))))
   -- and oee.asset in ("Inspection Robot 003") --Remove this filter

    GROUP BY
        1,
        2

    ORDER BY
        1
    ),
    state_calc as (
        select
         base.oee_asset,
            base.oee_event_timestamp_time,
            oee_isrunning_1,
            oee_isfaulted_1,
            IF((oee_isfaulted_1=0 OR oee_isfaulted_1 IS NULL),
                IF((oee_isrunning_1=1 OR oee_isrunning_1 IS NULL),
                    "Up",
                    "Down"),
                "Down") as n_state,
            IF((oee_isfaulted_1=1),
                "UPM",
                IF((oee_isfaulted_1=0),
                    IF(oee_isrunning_1=1 OR oee_isrunning_1 IS NULL,"Up","PM"),
                    "Up"))
                 as n_state2,
            LEAD(IF((oee_isfaulted_1=1),
                "UPM",
                IF((oee_isfaulted_1=0),
                    IF(oee_isrunning_1=1 OR oee_isrunning_1 IS NULL,"Up","PM"),
                    "Up"))
                 ) OVER (PARTITION BY base.oee_asset ORDER BY base.oee_event_timestamp_time) AS next_nstate2,

                 from base
    ),
    state_final as (
       select
        oee_asset, oee_event_timestamp_time,
            CASE when next_nstate2 = "UPM" OR n_state2 = "UPM" then "Unplanned downtime"
                 when n_state2="Up" then "Running"
                 when n_state2="PM" then "Planned downtime" end
                 as state
        from
    state_calc
    order by oee_asset, oee_event_timestamp_time
    )
    select * from state_final;;
  }
  dimension: asset {
    sql: ${TABLE}.oee_asset ;;
    type: string
  }
  dimension: state {
    sql: ${TABLE}.state ;;
    type: string
  }
  dimension_group: event_timestamp {
   sql: ${TABLE}.oee_event_timestamp_time ;;
      type: time
      timeframes: [
        raw,
        time,
        minute,
        hour,
        date
      ]
      datatype: datetime
      convert_tz: yes
    }
  dimension: asset_timestamp_pk {
    type: string
    sql: CONCAT(${asset}, ${TABLE}.oee_event_timestamp_time) ;;
    primary_key: no
    hidden: no
  }
  dimension: pk {
    type: string
    sql: CONCAT(${asset}, ${TABLE}.oee_event_timestamp_time, ${state}) ;;
    primary_key: yes
    hidden: no
  }
  measure: total_planned_downtime {
    type:count
    filters: [state: "Planned downtime"]
  }
  measure: total_unplanned_downtime {
    type: count
    filters: [state: "Unplanned downtime"]
  }
  measure: total_runtime {
    type: count
    filters: [state: "Running"]
  }
  measure: total_time {
    type: number
    sql: ${total_runtime}+${total_planned_downtime}+${total_unplanned_downtime} ;;
  }
  measure: machine_health {
    type: number
    sql: ${total_runtime}/NULLIF(${total_time},0) ;;
    value_format_name: percent_1
  }
  # dimension: shift {
  #   sql: ${TABLE}.shift ;;
  #   type: string
  # }
  # dimension_group: start_time {
  #   sql: ${TABLE}.start_time ;;
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     minute,
  #     hour,
  #     date
  #   ]
  #   datatype: datetime
  #   convert_tz: yes
  # }
  # dimension_group: end_time {
  #   sql: ${TABLE}.end_time ;;
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     minute,
  #     hour,
  #     date
  #   ]
  #   datatype: datetime
  #   convert_tz: yes
  # }

  # measure: unplanned_downtime_count {
  #   type: count_distinct
  #   sql: CONCAT(${asset}, ${state}, ${start_time_time})  ;;
  #   filters: [state: "Unplanned downtime"]
  # }
  # measure: planned_downtime_count {
  #   type: count_distinct
  #   sql: CONCAT(${asset}, ${state}, ${start_time_time})  ;;
  #   filters: [state: "Planned downtime"]
  # }
  # dimension_group: state_duration {
  #   type: duration
  #   datatype: datetime
  #   sql_start: ${start_time_raw} ;;
  #   sql_end: ${end_time_raw} ;;
  #   intervals: [
  #     second,
  #     minute,
  #     hour,
  #     day
  #   ]
  # }

  # measure: total_planned_downtime {
  #   type: sum_distinct
  #   sql_distinct_key: CONCAT(${asset}, ${state}, ${start_time_time})  ;;
  #   sql: ${seconds_state_duration};;
  #   filters: [state: "Planned downtime"]
  #   value_format_name: decimal_0
  # }
  # measure: total_unplanned_downtime {
  #   # type: sum
  #   # sql: ${seconds_state_duration} ;;
  #   type: sum_distinct
  #   sql_distinct_key: CONCAT(${asset}, ${state}, ${start_time_time})  ;;
  #   sql: ${seconds_state_duration};;
  #   filters: [state: "Unplanned downtime"]
  #   value_format_name: decimal_1
  #   html:
  #   {% assign s = value %}
  #   {% assign m = value | divided_by: 60.0 %}
  #   {% assign remaining_s = value | modulo: 60 %}
  #   {{m | round: 1}}
  #   ;;
  # }
  # measure: average_unplanned_downtime {
  #   type: average
  #   label: "Mean Time To Repair (mins)"
  #   sql: COALESCE(${seconds_state_duration},0) ;;
  #   filters: [state: "Unplanned downtime"]
  #   value_format_name: decimal_1
  #   html:
  #   {% assign s = value %}
  #   {% assign m = value | divided_by: 60.0 %}
  #   {% assign remaining_s = value | modulo: 60 %}
  #   {{m | round: 1}}
  #   ;;
  # }
  # measure: mttr {
  #   sql: ${total_unplanned_downtime}/NULLIF(${unplanned_downtime_count},0) ;;
  #   value_format_name: decimal_1
  # }
  # measure: total_runtime {
  #   type: sum_distinct
  #   sql_distinct_key: CONCAT(${asset}, ${state}, ${start_time_time})  ;;
  #   sql: ${seconds_state_duration};;
  #   filters: [state: "Running"]
  # }
  # dimension: time_between_failures {
  #   type: number
  #   sql: ${TABLE}.time_between_failures ;;
  # }
  # measure: mean_time_between_failures {
  #   type: average
  #   label: "Mean Time Between Failures (mins)"
  #   sql: COALESCE(${time_between_failures},0) ;;
  #   filters: [time_between_failures: ">0"]
  #   html:
  #   {% assign s = value %}
  #   {% assign m = value | divided_by: 60.0 %}
  #   {% assign remaining_s = value | modulo: 60 %}
  #   {{m | round: 1}}
  #   ;;
  # }

  # dimension:  shift{
  #   type: string
  # }
  # dimension:  site{
  #   type: string
  # }
  # dimension:  maintenance{
  #   type: string
  # }
  # dimension:  name{
  #   type: string
  # }
  # dimension: value {
  #   type: number
  # }
  # dimension: shift_of_day {
  #   type: string
  #   sql: CONCAT(${start_time_date},${shift}) ;;
  # }
}
