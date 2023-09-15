- dashboard: mde_maintenance
  title: MDE - Maintenance Dashboard
  refresh: 10 seconds
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: SixXrq2HkkXHw1CeFkS2no
  elements:
  - title: Operability until next maintenance
    name: Operability until next maintenance
    model: mde_analytics
    explore: oee
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [oee_overview.percentOfMax, oee_overview.oee_target]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    arm_length: 0
    arm_weight: 0
    spinner_length: 100
    spinner_weight: 50
    target_length: 0
    target_gap: 15
    target_weight: 0
    range_min: 0
    value_label_type: value
    value_label_font: 12
    value_label_padding: 57
    target_source: second
    target_label_type: nolabel
    target_label_font: 3
    target_value_override: ''
    label_font_size: 0
    spinner_type: needle
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#EE7772", "#EE7772", "#EE7772", "#EE7772", "#EE7772", "#EE7772",
      "#EE7772", "#EE7772", "#ffed6f", "#7FCDAE"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 60
    range_x: -0.6
    range_y: 1
    target_label_padding: 1.5
    circleThickness: 0.5
    circleFillGap: 0.5
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    show_value_labels: true
    font_size: 12
    listen:
      Asset: oee.asset
      Site: oee.asset
    row: 2
    col: 0
    width: 6
    height: 4
  - name: ''
    type: text
    title_text: ''
    body_text: "<div style=\"background-color:white; border-radius: 12px;text-align:\
      \ center; valign: top;\">  \n<font color=\"black\" size=\"6\"><span>Maintenance\
      \ Dashboard</span></font> \n\n"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: New Tile
    name: New Tile
    model: mde_analytics
    explore: oee
    type: single_value
    fields: [oee_overview.runtime_until_next_maintenance]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    defaults_version: 1
    note_state: expanded
    note_display: above
    note_text: Hours until next maintenance
    listen:
      Asset: oee.asset
      Site: oee.asset
    row: 6
    col: 0
    width: 6
    height: 4
  - title: New Tile
    name: New Tile (2)
    model: mde_analytics
    explore: oee
    type: single_value
    fields: [oee_overview.runtime_since_last_maintenance]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    defaults_version: 1
    hidden_pivots: {}
    note_state: expanded
    note_display: above
    note_text: Hours since last maintenance
    listen:
      Asset: oee.asset
      Site: oee.asset
    row: 10
    col: 0
    width: 6
    height: 4
  - title: Downtime trend
    name: Downtime trend
    model: mde_analytics
    explore: oee
    type: looker_line
    fields: [oee.runtime_since_last_maintenance, oee.runtime_until_next_maintenance,
      oee.percentOfMax, oee.maxRuntimeBeforeMaintenance, oee.state, oee.isFaulted,
      oee.isRunning, oee.state_value, oee.event_timestamp_time]
    filters:
      oee.minutes_max_timestamp_diff: "<=10"
      oee.isFaulted: ''
      oee.isRunning: ''
      oee.state_value: NOT NULL
    sorts: [oee.event_timestamp_time]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [oee.runtime_since_last_maintenance, oee.runtime_until_next_maintenance,
      oee.percentOfMax, oee.maxRuntimeBeforeMaintenance, oee.state, oee.isRunning]
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      Asset: oee.asset
      Site: oee.site
    row: 8
    col: 6
    width: 18
    height: 6
  - title: Asset State Distribution
    name: Asset State Distribution
    model: mde_analytics
    explore: oee
    type: looker_bar
    fields: [maintenance.total_planned_downtime, maintenance.total_unplanned_downtime,
      maintenance.total_runtime]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Asset: oee.asset
      Site: oee.asset
    row: 2
    col: 6
    width: 18
    height: 6
  filters:
  - name: Site
    title: Site
    type: field_filter
    default_value: Chicago
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: mde_analytics
    explore: oee
    listens_to_filters: []
    field: oee.site
  - name: Line
    title: Line
    type: field_filter
    default_value: Line 1
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: mde_analytics
    explore: oee
    listens_to_filters: [Site]
    field: oee.line
  - name: Asset
    title: Asset
    type: field_filter
    default_value: Assembly Robot 001
    allow_multiple_values: true
    required: true
    ui_config:
      type: tag_list
      display: popover
    model: mde_analytics
    explore: oee
    listens_to_filters: [Line, Site]
    field: oee.asset
