- dashboard: mde_oee
  title: MDE - OEE Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: RuLy0AKM7e590DVdkTXjMq
  elements:
  - title: OEE
    name: OEE
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [oee_overview.oee_calc, oee_overview.oee_target]
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
      Site: oee_overview.site
      Asset: oee_overview.asset
      Line: oee_overview.line
    row: 2
    col: 0
    width: 6
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"background-color:white; border-radius: 12px;text-align:\
      \ center; valign: top;\">  \n<font color=\"black\" size=\"6\"><span>OEE Metrics</span></font>\
      \ \n\n"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Performance
    name: Performance
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [oee_overview.performance_calc, oee_overview.oee_target]
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
      Site: oee_overview.site
      Asset: oee_overview.asset
      Line: oee_overview.line
    row: 2
    col: 12
    width: 6
    height: 5
  - title: Quality
    name: Quality
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [oee_overview.quality_calc, oee_overview.oee_target]
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
      Site: oee_overview.site
      Asset: oee_overview.asset
      Line: oee_overview.line
    row: 2
    col: 18
    width: 6
    height: 5
  - title: Availability
    name: Availability
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [oee_overview.availability_calc, oee_overview.oee_target]
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
      Site: oee_overview.site
      Asset: oee_overview.asset
      Line: oee_overview.line
    row: 2
    col: 6
    width: 6
    height: 5
  - title: OEE Trend
    name: OEE Trend
    model: mde_analytics
    explore: oee
    type: looker_column
    fields: [oee.oee_value, oee.event_timestamp_hour]
    fill_fields: [oee.event_timestamp_hour]
    filters:
      oee.tag_name: ''
      oee.event_timestamp_time: 2023-08-24 08:00:00 for 8 hours
    sorts: [oee.event_timestamp_hour desc]
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
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.oee_value, id: oee.oee_value,
            name: Oee Value}], showLabels: false, showValues: true, maxValue: 100,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Asset: oee.asset
      Line: oee.line
    row: 7
    col: 0
    width: 6
    height: 5
  - title: Total Parts Made KPI tile
    name: Total Parts Made KPI tile
    model: mde
    explore: oee_overview
    type: single_value
    fields: [oee_overview.total_parts_made]
    sorts: [oee_overview.total_parts_made desc 0]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Total Parts Made This Shift
    listen:
      Asset: oee_overview.asset
      Line: oee_overview.line
    row: 16
    col: 10
    width: 4
    height: 4
  - title: Uptime KPI Tile
    name: Uptime KPI Tile
    model: mde
    explore: oee_overview
    type: single_value
    fields: [oee_overview.uptime]
    sorts: [oee_overview.uptime desc 0]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Uptime This Shift (hrs)
    listen:
      Asset: oee_overview.asset
      Line: oee_overview.line
    row: 16
    col: 6
    width: 4
    height: 4
  - title: Bad Parts Made KPI tile
    name: Bad Parts Made KPI tile
    model: mde
    explore: oee_overview
    type: single_value
    fields: [oee_overview.bad_parts_made]
    sorts: [oee_overview.bad_parts_made desc 0]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Bad Parts Made This Shift
    listen:
      Asset: oee_overview.asset
      Line: oee_overview.line
    row: 16
    col: 14
    width: 4
    height: 4
  - title: Machine State KPI tile
    name: Machine State KPI tile
    model: mde_analytics
    explore: oee_overview
    type: single_value
    fields: [oee_overview.state]
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
    hidden_pivots: {}
    show_view_names: false
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Machine State
    listen:
      Site: oee_overview.site
      Asset: oee_overview.asset
      Line: oee_overview.line
    row: 16
    col: 0
    width: 6
    height: 4
  - title: State Trend
    name: State Trend
    model: mde_analytics
    explore: oee
    type: looker_line
    fields: [oee.state_value, oee.event_timestamp_time]
    filters:
      oee.minutes_max_timestamp_diff: "<=60"
    sorts: [oee.event_timestamp_time desc]
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
    hidden_pivots: {}
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Asset: oee.asset
      Line: oee.line
    row: 12
    col: 0
    width: 24
    height: 4
  - title: Average Cycle Time KPI tile
    name: Average Cycle Time KPI tile
    model: mde_analytics
    explore: oee_overview
    type: single_value
    fields: [oee_overview.cycle_time_per_part]
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
    hidden_pivots: {}
    show_view_names: false
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Average Cycle Time This Shift (s/part)
    listen:
      Site: oee_overview.site
      Asset: oee_overview.asset
      Line: oee_overview.line
    row: 16
    col: 18
    width: 6
    height: 4
  - title: Availability Trend
    name: Availability Trend
    model: mde_analytics
    explore: oee
    type: looker_column
    fields: [oee.event_timestamp_hour, oee.avg_value]
    fill_fields: [oee.event_timestamp_hour]
    filters:
      oee.tag_name: Availability
      oee.hours_max_timestamp_diff: "<=8"
    sorts: [oee.event_timestamp_hour desc]
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
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.avg_value, id: oee.avg_value,
            name: Avg Value}], showLabels: false, showValues: true, maxValue: 100,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Asset: oee.asset
      Line: oee.line
    row: 7
    col: 6
    width: 6
    height: 5
  - title: 'Quality Trend '
    name: 'Quality Trend '
    model: mde_analytics
    explore: oee
    type: looker_column
    fields: [oee.event_timestamp_hour, oee.avg_value]
    fill_fields: [oee.event_timestamp_hour]
    filters:
      oee.tag_name: Quality
      oee.hours_max_timestamp_diff: "<=8"
    sorts: [oee.event_timestamp_hour desc]
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
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.avg_value, id: oee.avg_value,
            name: Avg Value}], showLabels: false, showValues: true, maxValue: 100,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Asset: oee.asset
      Line: oee.line
    row: 7
    col: 18
    width: 6
    height: 5
  - title: Performance Trend
    name: Performance Trend
    model: mde_analytics
    explore: oee
    type: looker_column
    fields: [oee.event_timestamp_hour, oee.avg_value]
    fill_fields: [oee.event_timestamp_hour]
    filters:
      oee.tag_name: Performance
      oee.hours_max_timestamp_diff: "<=8"
    sorts: [oee.event_timestamp_hour desc]
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
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.avg_value, id: oee.avg_value,
            name: Avg Value}], showLabels: false, showValues: true, maxValue: 100,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Asset: oee.asset
      Line: oee.line
    row: 7
    col: 12
    width: 6
    height: 5
  - title: OEE Trend - 24 hours
    name: OEE Trend - 24 hours
    model: mde_analytics
    explore: oee
    type: looker_column
    fields: [oee.event_timestamp_hour, oee.shift, oee.oee_value, min_of_seconds_max_timestamp_diff]
    filters:
      oee.tag_name: ''
      oee.hours_max_timestamp_diff: "<=24"
      oee.shift: "-NULL"
      oee.line: Line 1
      oee.asset: Assembly Robot 001
    sorts: [min_of_seconds_max_timestamp_diff desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${oee.shift}="1", ${oee.oee_value}/100,null)
      label: Shift 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: shift_1
      _type_hint: number
    - category: table_calculation
      expression: if (${oee.shift}="2", ${oee.oee_value}/100,null)
      label: Shift 2
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: shift_2
      _type_hint: number
    - category: table_calculation
      expression: if (${oee.shift}="3", ${oee.oee_value}/100,null)
      label: Shift 3
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: shift_3
      _type_hint: number
    - measure: min_of_seconds_max_timestamp_diff
      based_on: oee.seconds_max_timestamp_diff
      expression: ''
      label: Min of Seconds Max Timestamp Diff
      type: min
      _kind_hint: measure
      _type_hint: number
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
    stacking: normal
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: shift_1, id: shift_1,
            name: Shift 1, __FILE: mde_analytics/dashboards/mde_oee.dashboard.lookml,
            __LINE_NUM: 865}, {axisId: shift_2, id: shift_2, name: Shift 2, __FILE: mde_analytics/dashboards/mde_oee.dashboard.lookml,
            __LINE_NUM: 866}, {axisId: shift_3, id: shift_3, name: Shift 3, __FILE: mde_analytics/dashboards/mde_oee.dashboard.lookml,
            __LINE_NUM: 866}], showLabels: false, showValues: true, maxValue: 1, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: mde_analytics/dashboards/mde_oee.dashboard.lookml,
        __LINE_NUM: 865}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [oee.oee_value, min_of_seconds_max_timestamp_diff]

    listen:
      Asset: oee.asset
      Line: oee.line
    row: 20
    col: 0
    width: 24
    height: 7
  - title: OEE Comparison by Shift
    name: OEE Comparison by Shift
    model: mde_analytics
    explore: oee
    type: looker_column
    fields: [oee.oee_value, oee.shift]
    filters:
      oee.tag_name: ''
      oee.hours_max_timestamp_diff: "<=24"
      oee.shift: '-NULL'
    sorts: [oee.shift]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${oee.shift}="1", ${oee.oee_value}/100,null)
      label: Shift 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: shift_1
      _type_hint: number
      is_disabled: false
    - category: table_calculation
      expression: if (${oee.shift}="2", ${oee.oee_value}/100,null)
      label: Shift 2
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: shift_2
      _type_hint: number
      is_disabled: false
    - category: table_calculation
      expression: if (${oee.shift}="3", ${oee.oee_value}/100,null)
      label: Shift 3
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: shift_3
      _type_hint: number
      is_disabled: false
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
    stacking: normal
    limit_displayed_rows: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: shift_1, id: shift_1,
            name: Shift 1}, {axisId: shift_2, id: shift_2, name: Shift 2}, {axisId: shift_3,
            id: shift_3, name: Shift 3}], showLabels: false, showValues: true, maxValue: 1,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [oee.oee_value]
    listen:
      Asset: oee.asset
      Line: oee.line
    row: 27
    col: 0
    width: 24
    height: 7
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
    explore: oee
    listens_to_filters: []
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
    listens_to_filters: [Line]
    field: oee.asset
