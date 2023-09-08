- dashboard: mde_outlier
  title: MDE - Outlier Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: djvF6J8Fw3tua2pkIwukvY
  elements:
  - title: Outlier Occurrence Trend
    name: Outlier Occurrence Trend
    model: mde_analytics
    explore: oee
    type: looker_line
    fields: [oee.AnomalyRecorded, oee.AnomalyDetection, oee.event_timestamp_time]
    filters:
      oee.AnomalyDetection: NOT NULL
      oee.minutes_max_timestamp_diff: "<=5"
    sorts: [oee.event_timestamp_time desc]
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.AnomalyDetection,
            id: oee.AnomalyDetection, name: AnomalyDetection}], showLabels: true,
        showValues: true, maxValue: 52, minValue: 48, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    series_types:
      oee.AnomalyRecorded: scatter
    series_colors:
      oee.AnomalyRecorded: "#FC2E31"
    reference_lines: [{reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#FCBF00",
        range_start: '50.5', range_end: '50.75', label: ''}, {reference_type: range,
        line_value: mean, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#FC2E31", range_start: '49', range_end: '49.25'},
      {reference_type: range, line_value: mean, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: right, color: "#FCBF00", range_start: '49.25',
        range_end: '49.5', label: ''}, {reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#FC2E31",
        range_start: '50.75', range_end: '51'}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Asset: oee.asset
      Site: oee.site
      Line: oee.line
    row: 0
    col: 0
    width: 24
    height: 12
  - title: Part Size Distribution in Current Shift
    name: Part Size Distribution
    model: mde_analytics
    explore: oee
    type: looker_column
    fields: [oee.parts_size_readings_count, oee.part_size_tiers]
    filters:
      oee.AnomalyDetection: NOT NULL
      oee.latest_shift_check: 'Yes'
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percentage share
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percentage_share
      args:
      - oee.parts_size_readings_count
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.parts_size_readings_count,
            id: oee.parts_size_readings_count, name: Parts Size Readings Count}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: percentage_share, id: percentage_share, name: Percentage
              share}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    size_by_field: ''
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: true
    series_types:
      percentage_share: scatter
    show_dropoff: false
    advanced_vis_config: "{\n  chart: {},\n  series: [{\n  dataLabels:{enabled:false},\n\
      \  id: 'oee.parts_size_readings_count'},\n  {\n    dataLabels:{enabled:true}\n\
      \  },\n  {\n    id: 'percentage_share'},\n  \n    {\n      dataLabels:{enabled:true}\n\
      \    },\n    {\n    marker: {\n        fillColor: 'red',\n        lineColor:\
      \ null,\n        symbol: 'triangle',\n        enabled: true,\n      }\n    }\n\
      \  ]\n}"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields:
    listen:
      Asset: oee.asset
      Site: oee.site
      Line: oee.line
    row: 12
    col: 8
    width: 16
    height: 6
  - title: New Tile
    name: New Tile
    model: mde_analytics
    explore: oee
    type: single_value
    fields: [oee.anomaly_count]
    filters:
      oee.AnomalyDetection: NOT NULL
      oee.latest_shift_check: 'Yes'
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
    note_text: Outliers in Current Shift
    listen:
      Asset: oee.asset
      Site: oee.site
      Line: oee.line
    row: 12
    col: 0
    width: 8
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
    default_value: Line 2
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
    default_value: Inspection Robot 001
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: mde_analytics
    explore: oee
    listens_to_filters: [Line]
    field: oee.asset
