- dashboard: mde_maintenance
  --refresh: 10 seconds
  title: MDE - Maintenance Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: i2fl5E0fupzVX2rJngRmVU
  elements:
  - title: Time until next maintenance
    name: Time until next maintenance
    model: mde_analytics
    explore: oee_overview
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
      Asset: oee_overview.asset
      Site: oee_overview.site
    row: 2
    col: 0
    width: 6
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
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
    explore: oee_overview
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
    note_text: Days until next maintenance
    listen:
      Asset: oee_overview.asset
      Site: oee_overview.site
    row: 7
    col: 0
    width: 6
    height: 4
  - title: New Tile
    name: New Tile (2)
    model: mde_analytics
    explore: oee_overview
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
    note_text: Days since last maintenance
    listen:
      Asset: oee_overview.asset
      Site: oee_overview.site
    row: 11
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
    row: 15
    col: 0
    width: 24
    height: 8
  - title: Downtime Events
    name: Downtime Events
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [maintenance.unplanned_downtime_count, maintenance.planned_downtime_count]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    font_size_main: '12'
    orientation: horizontal
    style_maintenance.unplanned_downtime_count: "#3A4245"
    show_title_maintenance.unplanned_downtime_count: true
    title_override_maintenance.unplanned_downtime_count: Failures
    title_placement_maintenance.unplanned_downtime_count: above
    value_format_maintenance.unplanned_downtime_count: ''
    style_maintenance.planned_downtime_count: "#3A4245"
    show_title_maintenance.planned_downtime_count: true
    title_override_maintenance.planned_downtime_count: Planned Maintenances
    title_placement_maintenance.planned_downtime_count: above
    value_format_maintenance.planned_downtime_count: ''
    show_comparison_maintenance.planned_downtime_count: false
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
      Asset: oee_overview.asset
      Site: oee_overview.site
    row: 2
    col: 6
    width: 6
    height: 5
  - title: Asset State Distribution
    name: Asset State Distribution
    model: mde_analytics
    explore: oee_overview
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
      Asset: oee_overview.asset
      Site: oee_overview.site
    row: 2
    col: 12
    width: 12
    height: 5
  - title: Number of Planned Maintenances
    name: Number of Planned Maintenances
    model: mde_analytics
    explore: oee_overview
    type: table
    fields: [maintenance.start_time_date, maintenance.shift, maintenance.planned_downtime_count]
    pivots: [maintenance.shift]
    fill_fields: [maintenance.start_time_date]
    filters:
      maintenance.state: "-NULL"
    sorts: [maintenance.shift, maintenance.start_time_date desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 5378478f-6725-4b04-89cc-75fc42da804e, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Asset: oee_overview.asset
      Site: oee_overview.site
    row: 7
    col: 6
    width: 6
    height: 8
  - title: Duration of Failures
    name: Duration of Failures
    model: mde_analytics
    explore: oee_overview
    type: table
    fields: [maintenance.start_time_date, maintenance.shift, maintenance.total_unplanned_downtime]
    pivots: [maintenance.shift]
    fill_fields: [maintenance.start_time_date]
    filters:
      maintenance.state: "-NULL"
    sorts: [maintenance.shift, maintenance.start_time_date desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 5378478f-6725-4b04-89cc-75fc42da804e, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_column_widths:
      maintenance.start_time_date: 30
      maintenance.total_unplanned_downtime: 30
    defaults_version: 1
    hidden_pivots: {}
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Asset: oee_overview.asset
      Site: oee_overview.site
    row: 7
    col: 18
    width: 6
    height: 8
  - title: Number of Failures
    name: Number of Failures
    model: mde_analytics
    explore: oee_overview
    type: table
    fields: [maintenance.start_time_date, maintenance.shift, maintenance.unplanned_downtime_count]
    pivots: [maintenance.shift]
    fill_fields: [maintenance.start_time_date]
    filters:
      maintenance.state: "-NULL"
    sorts: [maintenance.shift, maintenance.start_time_date desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 5378478f-6725-4b04-89cc-75fc42da804e, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Asset: oee_overview.asset
      Site: oee_overview.site
    row: 7
    col: 12
    width: 6
    height: 8
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
    explore: oee_overview
    listens_to_filters: []
    field: oee_overview.site
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
    explore: oee_overview
    listens_to_filters: [Site]
    field: oee_overview.line
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
