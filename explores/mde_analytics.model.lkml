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
    relationship: many_to_one
  }
  join: max_shift{
    type: cross
    relationship: many_to_one
  }
}

explore: oee_overview {
  join: maintenance {
    type: left_outer
    relationship: one_to_many
    sql_on:  ${oee_overview.asset} = ${maintenance.asset};;
  }

}
explore: maintenance { }
