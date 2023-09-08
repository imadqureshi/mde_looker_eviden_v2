view: max_shift {
  derived_table: {
    sql:
      WITH max_timestamp AS (SELECT
            event_timestamp,
            JSON_EXTRACT_SCALAR(JSON_EXTRACT(embedded_metadata, '$.metadata'), '$.shift') as shift,
           CONCAT(EXTRACT (DATE FROM event_timestamp),JSON_EXTRACT_SCALAR(JSON_EXTRACT(embedded_metadata, '$.metadata'), '$.shift'))  as shift_of_day
            FROM `mde-factory-of-future.mde_data.default-numeric-records` WHERE TIMESTAMP_TRUNC(event_timestamp, DAY) > TIMESTAMP("2023-08-20"))
    SELECT
        max_timestamp.shift_of_day  AS max_shift_of_day
    FROM max_timestamp
    where shift IS NOT NULL
    order by event_timestamp desc limit 1;;
  }
  dimension: max_shift_of_day {
    sql: ${TABLE}.max_shift_of_day ;;
    type: string
  }
}
