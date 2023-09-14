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
    FROM `mde-factory-of-future.mde_data.default-numeric-records` WHERE TIMESTAMP_TRUNC(event_timestamp, DAY) > TIMESTAMP("2023-09-10")
    ORDER BY tag_name, event_timestamp ),
    base as (
    SELECT
            (FORMAT_TIMESTAMP('%F %T', oee.event_timestamp, 'UTC')) AS oee_event_timestamp_time,
       -- oee.event_timestamp AS oee_event_timestamp_time,
        oee.asset AS oee_asset,
        COALESCE(oee.shift,"NULL") as shift,
        AVG(CASE WHEN (( oee.tag_name ) = 'isRunning') THEN oee.value  ELSE NULL END) AS oee_isrunning_1,
        AVG(CASE WHEN (( oee.tag_name ) = 'isFaulted') THEN oee.value  ELSE NULL END) AS oee_isfaulted_1,
       -- MIN(CASE WHEN (( oee.tag_name ) = 'State') THEN oee.value  ELSE NULL END) AS oee_state_value
    FROM oee
    WHERE ((( oee.event_timestamp ) >= (TIMESTAMP('2023-09-11 08:04:00', 'America/Chicago')) AND ( oee.event_timestamp ) < (TIMESTAMP('2023-09-15 8:20:00', 'America/Chicago'))))
    --AND (oee.asset) in('Inspection Robot 001')
    GROUP BY
        1,
        2,
        3
    ORDER BY
        1
    ),
    StateChanges AS (
        SELECT
            base.oee_asset,
            base.oee_event_timestamp_time,
            base.shift,
            oee_isrunning_1,
            oee_isfaulted_1,
            LAG(oee_isrunning_1) OVER (PARTITION BY base.oee_asset, base.shift ORDER BY base.oee_event_timestamp_time) AS prev_isRunning,
            LAG(oee_isfaulted_1) OVER (PARTITION BY base.oee_asset, base.shift ORDER BY base.oee_event_timestamp_time) AS prev_isFaulted
        FROM base
    ),
    GroupedChanges AS (
        SELECT
            oee_asset,
            oee_event_timestamp_time,
            shift,
            oee_isrunning_1,
            oee_isfaulted_1,
            CASE
                WHEN oee_isrunning_1 = 1 THEN 'Running'
                WHEN oee_isrunning_1 = 0 AND oee_isfaulted_1 = 0 THEN 'Planned downtime'
                WHEN oee_isrunning_1 = 0 AND oee_isfaulted_1 = 1 THEN 'Unplanned downtime'
            END AS state,
            SUM(CASE WHEN oee_isrunning_1 != prev_isRunning OR oee_isfaulted_1 != prev_isFaulted THEN 1 ELSE 0 END) OVER (PARTITION BY oee_asset, shift ORDER BY oee_event_timestamp_time) AS state_group
        FROM StateChanges
    )
    SELECT
        oee_asset,
        shift,
        state,
        MIN(oee_event_timestamp_time) AS start_time,
        MAX(oee_event_timestamp_time) AS end_time,
        IF (state = "Unplanned downtime",
          TIMESTAMP_DIFF(
            CAST( MIN(oee_event_timestamp_time) AS TIMESTAMP),
            CAST(LAG(MAX(oee_event_timestamp_time)) OVER (PARTITION BY oee_asset ORDER BY state, oee_asset, MIN(oee_event_timestamp_time)) as TIMESTAMP),
            second),
          NULL) as time_between_failures,
    FROM GroupedChanges
    WHERE state IS NOT NULL
    GROUP BY oee_asset, shift, state, state_group
    ORDER BY oee_asset, shift, start_time;;
  }
  dimension: asset {
    sql: ${TABLE}.oee_asset ;;
    type: string
  }
  dimension: state {
    sql: ${TABLE}.state ;;
    type: string
  }
  dimension: shift {
    sql: ${TABLE}.shift ;;
    type: string
  }
  dimension_group: start_time {
    sql: ${TABLE}.start_time ;;
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
  dimension_group: end_time {
    sql: ${TABLE}.end_time ;;
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

  measure: unplanned_downtime_count {
    type: count_distinct
    sql: CONCAT(${asset}, ${state}, ${start_time_time})  ;;
    filters: [state: "Unplanned downtime"]
  }
  measure: planned_downtime_count {
    type: count_distinct
    sql: CONCAT(${asset}, ${state}, ${start_time_time})  ;;
    filters: [state: "Planned downtime"]
  }
  dimension_group: state_duration {
    type: duration
    datatype: datetime
    sql_start: ${start_time_raw} ;;
    sql_end: ${end_time_raw} ;;
    intervals: [
      second,
      minute,
      hour,
      day
    ]
  }
  dimension: asset_timestamp_pk {
    type: string
    sql: CONCAT(${asset}, ${TABLE}.start_time) ;;
    primary_key: yes
    hidden: no
  }
  measure: total_planned_downtime {
    type: sum_distinct
    sql_distinct_key: CONCAT(${asset}, ${state}, ${start_time_time})  ;;
    sql: ${seconds_state_duration};;
    filters: [state: "Planned downtime"]
  }
  measure: total_unplanned_downtime {
    # type: sum
    # sql: ${seconds_state_duration} ;;
    type: sum_distinct
    sql_distinct_key: CONCAT(${asset}, ${state}, ${start_time_time})  ;;
    sql: ${seconds_state_duration};;
    filters: [state: "Unplanned downtime"]
    value_format_name: decimal_1
    html:
    {% assign s = value %}
    {% assign m = value | divided_by: 60.0 %}
    {% assign remaining_s = value | modulo: 60 %}
    {{m | round: 1}}
    ;;
  }
  measure: average_unplanned_downtime {
    type: average
    label: "Mean Time To Repair (mins)"
    sql: COALESCE(${seconds_state_duration},0) ;;
    filters: [state: "Unplanned downtime"]
    value_format_name: decimal_1
    html:
    {% assign s = value %}
    {% assign m = value | divided_by: 60.0 %}
    {% assign remaining_s = value | modulo: 60 %}
    {{m | round: 1}}
    ;;
  }
  # measure: mttr {
  #   sql: ${total_unplanned_downtime}/NULLIF(${unplanned_downtime_count},0) ;;
  #   value_format_name: decimal_1
  # }
  measure: total_runtime {
    type: sum_distinct
    sql_distinct_key: CONCAT(${asset}, ${state}, ${start_time_time})  ;;
    sql: ${seconds_state_duration};;
    filters: [state: "Running"]
  }
  dimension: time_between_failures {
    type: number
    sql: ${TABLE}.time_between_failures ;;
  }
  measure: mean_time_between_failures {
    type: average
    label: "Mean Time Between Failures (mins)"
    sql: COALESCE(${time_between_failures},0) ;;
    filters: [time_between_failures: ">0"]
    html:
    {% assign s = value %}
    {% assign m = value | divided_by: 60.0 %}
    {% assign remaining_s = value | modulo: 60 %}
    {{m | round: 1}}
    ;;
  }

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
