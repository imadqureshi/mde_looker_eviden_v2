connection: "@{looker_connection}"

include: "/views/*.view.lkml"
include: "/dashboards/*.dashboard"
explore: tags {}
explore: oee {
  label: "MDE Data"
  join: oee_overview {
    type: left_outer
    relationship: many_to_one
    sql_on: ${oee.asset_timestamp}=${oee_overview.asset_timestamp}  and ${oee.asset} = ${oee_overview.asset} ;;
  }
  join: maintenance {
    type: inner
    relationship: many_to_one
    sql_on: ${oee.asset_timestamp}=${maintenance.asset_timestamp_pk} and ${oee.asset} = ${maintenance.asset};;
  }
  join: max_timestamp {
    type: cross
  }
  join: max_shift{
    type: cross
  }
}

explore: oee_overview {
  join: maintenance {
    type: left_outer
    relationship: one_to_many
    sql_on:  ${oee_overview.asset} = ${maintenance.asset};;
  }

}
explore: maintenance { #Need to understand why bringing in Shift information causes loss of data - Ex: UD for INspection Robot 001
  # join: oee {
  #   type: inner
  #   sql_on: ${oee.asset_timestamp} = ${maintenance.asset_timestamp_pk} ;;
  #   relationship: one_to_many
  # }
}
# explore: oee_last_8h{
#   view_name: oee
#   sql_always_where: ${oee.event_timestamp_raw} BETWEEN TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL -8 HOUR) AND CURRENT_TIMESTAMP();;
# }
# #"2023-08-24 06:00:00" AND "2023-08-24 14:00:00"  ;;
# explore: oee_max_8h{
#   view_name: oee
#   join: oee_overview {
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${oee.asset_timestamp}=${oee_overview.asset_timestamp}  and ${oee.asset} = ${oee_overview.asset} ;;
#   }
#   join: max_timestamp {
#     type: cross
#   }
#   #sql_always_where: ${oee.event_timestamp_raw} = ${oee_overview.max_timestamp};;
#   #sql_always_where: ${oee.event_timestamp_raw} BETWEEN TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL -8 HOUR) AND CURRENT_TIMESTAMP();;
# }
explore: max_timestamp{}
