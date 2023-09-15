view: max_shift {
  derived_table: {
    sql:
      WITH max_timestamp AS (SELECT
            event_timestamp,
            LEFT(JSON_EXTRACT_SCALAR(JSON_EXTRACT(embedded_metadata, '$.metadata'), '$.shift'),1) as shift,
           CONCAT(EXTRACT (DATE FROM event_timestamp),LEFT(JSON_EXTRACT_SCALAR(JSON_EXTRACT(embedded_metadata, '$.metadata'), '$.shift'),1))  as shift_of_day
            FROM `ageless-span-396219.mde_data.default-numeric-records`
            WHERE TIMESTAMP_TRUNC(event_timestamp, DAY) > TIMESTAMP_TRUNC(TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL -3 DAY),DAY))
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