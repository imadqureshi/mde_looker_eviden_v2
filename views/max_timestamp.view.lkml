view: max_timestamp {
  derived_table: {
    sql: SELECT
        MAX(event_timestamp) as max_timestamp
        FROM `mde-factory-of-future.mde_data.default-numeric-records`
        WHERE TIMESTAMP_TRUNC(event_timestamp, DAY) > TIMESTAMP_TRUNC(TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL -3 DAY),DAY);;
  }

  dimension_group: max_timestamp {
    sql: ${TABLE}.max_timestamp ;;
    type: time
    timeframes: [
      raw,
      time,
      hour,
      hour_of_day,
      minute30,
      minute15,
      minute,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: timestamp
    convert_tz: yes
  }
  measure: max_shift_of_day {
    type: number
    sql: ${TABLE}.shift ;;
  }
}
