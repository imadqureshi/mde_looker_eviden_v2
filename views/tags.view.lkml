view: tags {
  derived_table: {
    sql: select * from mde_mockup_data.tag_info ;;
  }
  dimension: tag_name {
    type: string
    sql: ${TABLE}.tag_name ;;
  }
}
