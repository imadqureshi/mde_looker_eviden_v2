- dashboard: mde_process
  refresh: 10 seconds
  #All metrics have a NOT NULL filter to avoid ups and downs when there is no data sent at a particular second
  title: MDE - Process Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: xL6tPqyeAXYD1vlb6WnW8p
  elements:
  - title: Current for last 5 minutes
    name: Current for last 5 minutes
    model: mde_analytics
    explore: oee
    type: looker_line
    fields: [oee.current, oee.event_timestamp_time]
    filters:
      oee.minutes_max_timestamp_diff: "<=5"
      oee.current: NOT NULL
    sorts: [oee.event_timestamp_time]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.current, id: oee.current,
            name: Current}], showLabels: true, showValues: true, maxValue: 12, minValue: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    hidden_series: []
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#FC2E31",
        line_value: '10.5', label: Max current range}, {reference_type: line, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#FC9200", label: Min current range, line_value: '9.5'}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Asset: oee.asset
      Line: oee.line
      Site: oee.site
    row: 0
    col: 0
    width: 12
    height: 6
  - title: Pressure for last 5 minutes
    name: Pressure for last 5 minutes
    model: mde_analytics
    explore: oee
    type: looker_line
    fields: [oee.pressure, oee.event_timestamp_time]
    filters:
      oee.minutes_max_timestamp_diff: "<=5"
      oee.pressure: NOT NULL
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
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.pressure, id: oee.pressure,
            name: Pressure}], showLabels: true, showValues: true, maxValue: 75, minValue: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    hidden_series: []
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#FC2E31",
        line_value: '70', label: Max pressure range}, {reference_type: line, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#FC9200", line_value: '60', label: Min pressure
          range}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Asset: oee.asset
      Line: oee.line
      Site: oee.site
    row: 6
    col: 0
    width: 12
    height: 6
  - title: Speed for last 5 minutes
    name: Speed for last 5 minutes
    model: mde_analytics

    explore: oee
    type: looker_line
    fields: [oee.speed, oee.event_timestamp_second]
    filters:
      oee.minutes_max_timestamp_diff: "<=5"
      oee.speed: NOT NULL
    sorts: [oee.event_timestamp_second]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.speed, id: oee.speed,
      name: Speed, __FILE: mde_analytics_custom/dashboards/mde_process.dashboard.lookml,
      __LINE_NUM: 179}], showLabels: true, showValues: true, maxValue: 110, minValue: !!null '',
    unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear,
    __FILE: mde_analytics_custom/dashboards/mde_process.dashboard.lookml, __LINE_NUM: 179}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    hidden_series: []
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
      margin_value: mean, margin_bottom: deviation, label_position: right, color: "#FC2E31",
      line_value: '105', label: Max speed range, __FILE: mde_analytics_custom/dashboards/mde_process.dashboard.lookml,
      __LINE_NUM: 189}, {reference_type: line, range_start: max, range_end: min, margin_top: deviation,
      margin_value: mean, margin_bottom: deviation, label_position: right, color: "#FC9200",
      line_value: '95', label: Min speed range, __FILE: mde_analytics_custom/dashboards/mde_process.dashboard.lookml,
      __LINE_NUM: 191}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Asset: oee.asset
      Line: oee.line
      Site: oee.site
    row: 18
    col: 0
    width: 12
    height: 6
  - title: Voltage for last 5 minutes
    name: Voltage for last 5 minutes
    model: mde_analytics
    explore: oee
    type: looker_line
    fields: [oee.voltage, oee.event_timestamp_time]
    filters:
      oee.minutes_max_timestamp_diff: "<=5"
      oee.voltage: NOT NULL
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
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.voltage, id: oee.voltage,
            name: Voltage}], showLabels: true, showValues: true, maxValue: 60, minValue: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    hidden_series: []
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#FC2E31",
        line_value: '55', label: Max voltage range}, {reference_type: line, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#FC9200", line_value: '45', label: Min voltage
          range}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Asset: oee.asset
      Line: oee.line
      Site: oee.site
    row: 12
    col: 0
    width: 12
    height: 6
  - title: Temperature for last 5 minutes
    name: Temperature for last 5 minutes
    model: mde_analytics

    explore: oee
    type: looker_line
    fields: [oee.temperature, oee.event_timestamp_second]
    filters:
      oee.minutes_max_timestamp_diff: "<=5"
      oee.temperature: NOT NULL
    sorts: [oee.event_timestamp_second desc]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.current, id: oee.current,
      name: Current, __FILE: mde_analytics_custom/dashboards/mde_process.dashboard.lookml,
      __LINE_NUM: 313}, {axisId: oee.pressure, id: oee.pressure, name: Pressure,
      __FILE: mde_analytics_custom/dashboards/mde_process.dashboard.lookml, __LINE_NUM: 314},
      {axisId: oee.speed, id: oee.speed, name: Speed, __FILE: mde_analytics_custom/dashboards/mde_process.dashboard.lookml,
      __LINE_NUM: 315}, {axisId: oee.temperature, id: oee.temperature, name: Temperature,
      __FILE: mde_analytics_custom/dashboards/mde_process.dashboard.lookml, __LINE_NUM: 315}],
    showLabels: true, showValues: true, minValue: !!null '', unpinAxis: false, tickDensity: default,
    tickDensityCustom: 5, type: linear, __FILE: mde_analytics_custom/dashboards/mde_process.dashboard.lookml,
    __LINE_NUM: 313}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    hidden_series: []
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
      margin_value: mean, margin_bottom: deviation, label_position: right, color: "#FC2E31",
      line_value: '20', label: Max temperature range, __FILE: mde_analytics_custom/dashboards/mde_process.dashboard.lookml,
      __LINE_NUM: 326}, {reference_type: line, range_start: max, range_end: min, margin_top: deviation,
      margin_value: mean, margin_bottom: deviation, label_position: right, color: "#FC9200",
      line_value: '15', label: Min temperature range, __FILE: mde_analytics_custom/dashboards/mde_process.dashboard.lookml,
      __LINE_NUM: 328}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    row: 24
    col: 0
    width: 12
    height: 6
  - title: Current for last 24 hours
    name: Current for last 24 hours
    model: mde_analytics
    explore: oee
    type: looker_column
    fields: [oee.current, oee.shift_of_day, min_of_seconds_max_timestamp_diff]
    filters:
      oee.hours_max_timestamp_diff: "<=24"
      oee.shift_of_day: "-NULL"
      oee.current: NOT NULL
    sorts: [oee.shift_of_day]
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.current, id: oee.current,
            name: Current}], showLabels: true, showValues: true, maxValue: 12, minValue: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    hidden_series: []
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#FC2E31",
        line_value: '10.5', label: Max current range}, {reference_type: line, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#FC9200", label: Min current range, line_value: '9.5'}]
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [min_of_seconds_max_timestamp_diff]
    listen:
      Asset: oee.asset
      Line: oee.line
      Site: oee.site
    row: 0
    col: 12
    width: 12
    height: 6
  - title: Pressure for last 24 hours
    name: Pressure for last 24 hours
    model: mde_analytics
    explore: oee
    type: looker_column
    fields: [oee.pressure, oee.shift_of_day]
    filters:
      oee.hours_max_timestamp_diff: "<=24"
      oee.shift_of_day: "-NULL"
      oee.pressure: NOT NULL
    sorts: [oee.shift_of_day]
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.pressure, id: oee.pressure,
            name: Pressure}], showLabels: true, showValues: true, maxValue: 75, minValue: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    hidden_series: []
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#FC2E31",
        line_value: '70', label: Max pressure range}, {reference_type: line, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#FC9200", line_value: '60', label: Min pressure
          range}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Asset: oee.asset
      Line: oee.line
      Site: oee.site
    row: 6
    col: 12
    width: 12
    height: 6
  - title: Temperature for last 24 hours
    name: Temperature for last 24 hours
    model: mde_analytics
    explore: oee
    type: looker_column
    fields: [oee.temperature, oee.shift_of_day]
    filters:
      oee.hours_max_timestamp_diff: "<=24"
      oee.shift: "-NULL"
      oee.temperature: NOT NULL
    sorts: [oee.shift_of_day]
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.current, id: oee.current,
            name: Current}, {axisId: oee.pressure, id: oee.pressure, name: Pressure},
          {axisId: oee.speed, id: oee.speed, name: Speed}, {axisId: oee.temperature,
            id: oee.temperature, name: Temperature}], showLabels: true, showValues: true,
        minValue: !!null '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    hidden_series: []
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#FC2E31",
        line_value: '20', label: Max temperature range}, {reference_type: line, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#FC9200", line_value: '15', label: Min temperature
          range}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Asset: oee.asset
      Line: oee.line
      Site: oee.site
    row: 24
    col: 12
    width: 12
    height: 6
  - title: Speed for last 24 hours
    name: Speed for last 24 hours
    model: mde_analytics
    explore: oee
    type: looker_column
    fields: [oee.speed, oee.shift_of_day]
    filters:
      oee.hours_max_timestamp_diff: "<=24"
      oee.shift: "-NULL"
      oee.speed: NOT NULL
    sorts: [oee.shift_of_day]
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.speed, id: oee.speed,
            name: Speed}], showLabels: true, showValues: true, maxValue: 110, minValue: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    hidden_series: []
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#FC2E31",
        line_value: '105', label: Max speed range}, {reference_type: line, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#FC9200", line_value: '95', label: Min speed
          range}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Asset: oee.asset
      Line: oee.line
      Site: oee.site
    row: 18
    col: 12
    width: 12
    height: 6
  - title: Voltage for last 24 hours
    name: Voltage for last 24 hours
    model: mde_analytics
    explore: oee
    type: looker_column
    fields: [oee.voltage, oee.shift_of_day]
    filters:
      oee.hours_max_timestamp_diff: "<=24"
      oee.shift: "-NULL"
      oee.voltage: NOT NULL
    sorts: [oee.shift_of_day]
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: oee.voltage, id: oee.voltage,
            name: Voltage}], showLabels: true, showValues: true, maxValue: 60, minValue: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    hidden_series: []
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#FC2E31",
        line_value: '55', label: Max voltage range}, {reference_type: line, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#FC9200", line_value: '45', label: Min voltage
          range}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Asset: oee.asset
      Line: oee.line
      Site: oee.site
    row: 12
    col: 12
    width: 12
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
    listens_to_filters: []
    field: oee.line
  - name: Asset
    title: Asset
    type: field_filter
    default_value: Assembly Robot 001
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: mde_analytics
    explore: oee
    listens_to_filters: [Line]
    field: oee.asset
