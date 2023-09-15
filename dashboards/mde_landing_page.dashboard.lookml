- dashboard: mde_landing_page
  refresh: 10 seconds
  title: Factory of the Future - Landing Page
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 6V4R9IksL3J6n4M7XYHKna
  elements:
  - title: New Tile
    name: New Tile
    model: mde_analytics
    explore: oee_overview
    type: single_value
    fields: [oee_overview.tbl_img_plant]
    sorts: [oee_overview.tbl_img_plant]
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
    single_value_title: Assembly Robot 001
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
    listen:
      Site: oee_overview.site
    row: 2
    col: 0
    width: 4
    height: 5
  - title: New Tile (Copy)
    name: New Tile (Copy)
    model: mde_analytics
    explore: oee_overview
    type: single_value
    fields: [oee_overview.tbl_img_visual_inspection_robot]
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
    listen:
      Site: oee_overview.site
    row: 25
    col: 0
    width: 4
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"background-color:white; border-radius: 12px;text-align:\
      \ center; valign: top;\">  \n<font color=\"black\" size=\"6\"><span>Key metrics\
      \ for Assembly Robots</span></font> \n\n"
    row: 7
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"background-color:white; border-radius: 12px;text-align:\
      \ center; valign: top;\">  \n<font color=\"black\" size=\"6\"><span>Key metrics\
      \ at the Plant/Site level</span></font> \n\n"
    row: 0
    col: 0
    width: 24
    height: 2
  - type: button
    name: button_oee_assembly
    rich_content_json: '{"text":"Navigate to OEE Dashboard","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_oee?Site=Chicago&Line=Line+1&Asset=Assembly+Robot+001"}'
    row: 14
    col: 4
    width: 5
    height: 1
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"background-color:white; border-radius: 12px;text-align:\
      \ center; valign: top;\">  \n<font color=\"black\" size=\"6\"><span>Key metrics\
      \ for Material Handling Robots</span></font> \n\n"
    row: 15
    col: 0
    width: 24
    height: 2
  - title: New Tile (Copy 2)
    name: New Tile (Copy 2)
    model: mde_analytics
    explore: oee_overview
    type: single_value
    fields: [oee_overview.tbl_img_material_handling_robot1]
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
    single_value_title: Assembly Robot 001
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
    listen:
      Site: oee_overview.site
    row: 17
    col: 0
    width: 4
    height: 5
  - title: New Tile (Copy 3)
    name: New Tile (Copy 3)
    model: mde_analytics
    explore: oee_overview
    type: single_value
    fields: [oee_overview.tbl_img_mini_mill]
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
    listen:
      Site: oee_overview.site
    row: 33
    col: 0
    width: 4
    height: 5
  - title: 'OEE Overview '
    name: 'OEE Overview '
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [oee_overview.oee_calc, oee_overview.oee_target]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 0
    show_value_labels: true
    font_size: 12
    listen:
      Site: oee_overview.site
    row: 2
    col: 4
    width: 5
    height: 5
  - title: 'OEE Overview '
    name: OEE Overview  (2)
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [oee_overview.oee_calc, oee_overview.oee_target]
    filters:
      oee_overview.asset: Assembly Robot 001,Assembly Robot 002
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 0
    show_value_labels: true
    font_size: 12
    note_state: collapsed
    note_display: above
    note_text: '<div style="text-align: center;">  <font color="black" size="3"><span
      title="OEE is calculated by multiplying the Performance, Quality and Availability
      metrics"> <span width = "50" display="block">OEE Overview &#x24D8;</span> </font>
      </div>

      '
    title_hidden: true
    listen:
      Site: oee_overview.site
    row: 9
    col: 4
    width: 5
    height: 5
  - title: New Tile (Copy 4)
    name: New Tile (Copy 4)
    model: mde_analytics
    explore: oee_overview
    type: single_value
    fields: [oee_overview.tbl_img_robotic_arm1]
    sorts: [oee_overview.tbl_img_robotic_arm1]
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
    single_value_title: Assembly Robot 001
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
    listen:
      Site: oee_overview.site
    row: 9
    col: 0
    width: 4
    height: 5
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"background-color:white; border-radius: 12px;text-align:\
      \ center; valign: top;\">  \n<font color=\"black\" size=\"6\"><span>Key metrics\
      \ for Visual Inspection Robots</span></font> \n\n"
    row: 23
    col: 0
    width: 24
    height: 2
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"background-color:white; border-radius: 12px;text-align:\
      \ center; valign: top;\">  \n<font color=\"black\" size=\"6\"><span>Key metrics\
      \ for Mini Mills</span></font> \n\n"
    row: 31
    col: 0
    width: 24
    height: 2
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"background-color:white; border-radius: 12px;text-align:\
      \ center; valign: top;\">  \n<font color=\"black\" size=\"6\"><span>Key metrics\
      \ for 5-axes CNCs</span></font> \n\n"
    row: 39
    col: 0
    width: 24
    height: 2
  - title: New Tile (Copy 5)
    name: New Tile (Copy 5)
    model: mde_analytics
    explore: oee_overview
    type: single_value
    fields: [oee_overview.tbl_img_5_axis_cnc]
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
    listen:
      Site: oee_overview.site
    row: 41
    col: 0
    width: 4
    height: 5
  - title: Anomaly Count - Plant Level
    name: Anomaly Count - Plant Level
    model: mde_analytics
    explore: oee
    type: single_value
    fields: [oee.anomaly_count]
    filters:
      oee.latest_shift_check: 'Yes'
    sorts: [oee.anomaly_count desc 0]
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Outliers
    listen: {}
    row: 2
    col: 14
    width: 5
    height: 5
  - title: 'OEE Overview '
    name: OEE Overview  (3)
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [oee_overview.oee_calc, oee_overview.oee_target]
    filters:
      oee_overview.asset: HAAS Mini Mill 001,HAAS Mini Mill 002
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 0
    show_value_labels: true
    font_size: 12
    note_state: collapsed
    note_display: above
    note_text: OEE Overview
    title_hidden: true
    listen:
      Site: oee_overview.site
    row: 33
    col: 4
    width: 5
    height: 5
  - title: OEE Overview
    name: OEE Overview
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [oee_overview.oee_calc, oee_overview.oee_target]
    filters:
      oee_overview.asset: Material Handling Robot 001,Material Handling Robot 002
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 0
    show_value_labels: true
    font_size: 12
    listen:
      Site: oee_overview.site
    row: 17
    col: 4
    width: 5
    height: 5
  - title: OEE Overview
    name: OEE Overview (2)
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [oee_overview.oee_calc, oee_overview.oee_target]
    filters:
      oee_overview.asset: HAAS 5-Axis CNC 001,HAAS 5-Axis CNC 002
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 0
    show_value_labels: true
    font_size: 12
    note_state: collapsed
    note_display: above
    note_text: "<div style=\"text-align: center;\">  \n<font color=\"black\" size=\"\
      3\">\n<span title=\"OEE is a product of Performance, Quality and Availability\"\
      > <span width = \"50\" display=\"block\">OEE Overview &#x24D8;</span>\n</font>\n\
      \ </div>\n"
    title_hidden: true
    listen:
      Site: oee_overview.site
    row: 41
    col: 4
    width: 5
    height: 5
  - type: button
    name: button_oee_inspection
    rich_content_json: '{"text":"Navigate to OEE Dashboard","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_oee?Site=Chicago&Line=Line+2&Asset=Inspection+Robot+001"}'
    row: 30
    col: 4
    width: 5
    height: 1
  - title: 'OEE Overview '
    name: OEE Overview  (4)
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [oee_overview.oee_calc, oee_overview.oee_target]
    filters:
      oee_overview.asset: Inspection Robot 001,Inspection Robot 002,Inspection Robot
        003
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 0
    show_value_labels: true
    font_size: 12
    listen:
      Site: oee_overview.site
    row: 25
    col: 4
    width: 5
    height: 5
  - type: button
    name: button_oee_material_handling
    rich_content_json: '{"text":"Navigate to OEE Dashboard","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_oee?Site=Chicago&Line=Line+2&Asset=Material+Handling+Robot+001"}'
    row: 22
    col: 4
    width: 5
    height: 1
  - type: button
    name: button_oee_mini_mill
    rich_content_json: '{"text":"Navigate to OEE Dashboard","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_oee?Site=Chicago&Line=Work+Cell+1&Asset=HAAS+Mini+Mill+001"}'
    row: 38
    col: 4
    width: 5
    height: 1
  - type: button
    name: button_oee_cnc
    rich_content_json: '{"text":"Navigate to OEE Dashboard","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_oee?Site=Chicago&Line=Work+Cell+1&Asset=HAAS+5-Axis+CNC+001"}'
    row: 46
    col: 4
    width: 5
    height: 1
  - type: button
    name: button_process_assembly
    rich_content_json: '{"text":"Navigate to Process Dashboard","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_process?Site=Chicago&Line=Line+1&Asset=Assembly+Robot+001"}'
    row: 14
    col: 9
    width: 5
    height: 1
  - type: button
    name: button_outlier_inspection
    rich_content_json: '{"text":"Navigate to Outlier Dashboard","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_outlier?Site=Chicago&Line=Line+2&Asset=Inspection+Robot+001"}'
    row: 30
    col: 14
    width: 5
    height: 1
  - title: Anomaly Count - Visual Inspection Robots
    name: Anomaly Count - Visual Inspection Robots
    model: mde_analytics
    explore: oee
    type: single_value
    fields: [oee.anomaly_count]
    filters:
      oee.asset: Inspection Robot 001,Inspection Robot 002,Inspection Robot 003
      oee.latest_shift_check: 'Yes'
    sorts: [oee.anomaly_count desc 0]
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Outliers
    listen: {}
    row: 25
    col: 14
    width: 5
    height: 5
  - title: Process - Plant Level
    name: Process - Plant Level
    model: mde_analytics
    explore: oee
    type: single_value
    fields: [oee.total_warnings_latest_shift]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Warnings in Current Shift
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Process Metrics
    listen: {}
    row: 2
    col: 9
    width: 5
    height: 5
  - type: button
    name: button_process_cnc
    rich_content_json: '{"text":"Navigate to Process Dashboard ","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_process?Site=Chicago&Line=Work+Cell+1&Asset=HAAS+5-Axis+CNC+001"}'
    row: 46
    col: 9
    width: 5
    height: 1
  - type: button
    name: button_process_mills
    rich_content_json: '{"text":"Navigate to Process Dashboard ","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_process?Site=Chicago&Line=Work+Cell+1&Asset=HAAS+Mini+Mill+001"}'
    row: 38
    col: 9
    width: 5
    height: 1
  - type: button
    name: button_process_inspection
    rich_content_json: '{"text":"Navigate to Process Dashboard ","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_process?Site=Chicago&Line=Line+2&Asset=Inspection+Robot+001"}'
    row: 30
    col: 9
    width: 5
    height: 1
  - type: button
    name: button_maintenance_assembly
    rich_content_json: '{"text":"Navigate to Maintenance Dashboard","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_maintenance?Site=Chicago&Line=Line+1&Asset=Assembly+Robot+001"}'
    row: 14
    col: 14
    width: 10
    height: 1
  - type: button
    name: button_maintenance_inspection
    rich_content_json: '{"text":"Navigate to Maintenance Dashboard","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_maintenance?Site=Chicago&Line=Line+2&Asset=Inspection+Robot+001"}'
    row: 30
    col: 19
    width: 5
    height: 1
  - title: Maintenance
    name: Maintenance
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [oee_overview.assets_up_for_maintenance]
    filters:
      oee_overview.asset: ''
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    style_oee_overview.runtime_since_last_maintenance: "#3A4245"
    show_title_oee_overview.runtime_since_last_maintenance: true
    title_override_oee_overview.runtime_since_last_maintenance: Avg Runtime Since
      Last Maintenance
    title_placement_oee_overview.runtime_since_last_maintenance: above
    value_format_oee_overview.runtime_since_last_maintenance: '##,### "s"'
    style_oee_overview.runtime_until_next_maintenance: "#3A4245"
    show_title_oee_overview.runtime_until_next_maintenance: true
    title_override_oee_overview.runtime_until_next_maintenance: Avg Runtime Until
      Next Maintenance
    title_placement_oee_overview.runtime_until_next_maintenance: above
    value_format_oee_overview.runtime_until_next_maintenance: '##,### "s"'
    show_comparison_oee_overview.runtime_until_next_maintenance: false
    style_oee_overview.asset_life: "#3A4245"
    show_title_oee_overview.asset_life: true
    title_override_oee_overview.asset_life: Avg Asset Life
    title_placement_oee_overview.asset_life: above
    value_format_oee_overview.asset_life: '##,### "s"'
    show_comparison_oee_overview.asset_life: false
    style_oee_overview.asset_max_life: "#3A4245"
    show_title_oee_overview.asset_max_life: true
    title_placement_oee_overview.asset_max_life: above
    value_format_oee_overview.asset_max_life: ''
    show_comparison_oee_overview.asset_max_life: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 0
    hidden_pivots: {}
    listen: {}
    row: 2
    col: 19
    width: 5
    height: 5
  - type: button
    name: button_maintenance_material_handling
    rich_content_json: '{"text":"Navigate to Maintenance Dashboard","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_maintenance?Site=Chicago&Line=Line+2&Asset=Material+Handling+Robot+001"}'
    row: 22
    col: 14
    width: 10
    height: 1
  - type: button
    name: button_maintenance_mills
    rich_content_json: '{"text":"Navigate to Maintenance Dashboard","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_maintenance?Site=Chicago&Line=Work+Cell+1&Asset=HAAS+Mini+Mill+001"}'
    row: 38
    col: 14
    width: 10
    height: 1
  - type: button
    name: button_maintenance_cnc
    rich_content_json: '{"text":"Navigate to Maintenance Dashboard","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_maintenance?Site=Chicago&Line=Work+Cell+1&Asset=HAAS+5-Axis+CNC+001"}'
    row: 46
    col: 14
    width: 10
    height: 1
  - type: button
    name: button_process_material_handling
    rich_content_json: '{"text":"Navigate to Process Dashboard","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/mde_analytics::mde_process?Site=Chicago&Line=Line+2&Asset=Material+Handling+Robot+001"}'
    row: 22
    col: 9
    width: 5
    height: 1
  - title: Process - Visual Inspection
    name: Process - Visual Inspection
    model: mde_analytics
    explore: oee
    type: single_value
    fields: [oee.total_warnings_latest_shift]
    filters:
      oee.asset: Inspection Robot 001,Inspection Robot 002,Inspection Robot 003
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title:  Warnings in Current Shift
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Process Metrics
    listen: {}
    row: 25
    col: 9
    width: 5
    height: 5
  - title: Process - Assembly
    name: Process - Assembly
    model: mde_analytics
    explore: oee
    type: single_value
    fields: [oee.total_warnings_latest_shift]
    filters:
      oee.asset: Assembly Robot 001,Assembly Robot 002
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title:  Warnings in Current Shift
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Process Metrics
    listen: {}
    row: 9
    col: 9
    width: 5
    height: 5
  - title: Process - Material Handling
    name: Process - Material Handling
    model: mde_analytics
    explore: oee
    type: single_value
    fields: [oee.total_warnings_latest_shift]
    filters:
      oee.asset: Material Handling Robot 001,Material Handling Robot 002
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title:  Warnings in Current Shift
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Process Metrics
    listen: {}
    row: 17
    col: 9
    width: 5
    height: 5
  - title: Process - Plant Level (Copy 4)
    name: Process - Plant Level (Copy 4)
    model: mde_analytics
    explore: oee
    type: single_value
    fields: [oee.total_warnings_latest_shift]
    filters:
      oee.asset: HAAS Mini Mill 001, HAAS Mini Mill 002
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title:  Warnings in Current Shift
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Process Metrics
    listen: {}
    row: 33
    col: 9
    width: 5
    height: 5
  - title: Process - Plant Level (Copy 5)
    name: Process - Plant Level (Copy 5)
    model: mde_analytics
    explore: oee
    type: single_value
    fields: [oee.total_warnings_latest_shift]
    filters:
      oee.asset: HAAS 5-Axis CNC 001, HAAS 5-Axis CNC 002
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title:  Warnings in Current Shift
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Process Metrics
    listen: {}
    row: 41
    col: 9
    width: 5
    height: 5
  - title: Maintenance
    name: Maintenance (2)
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [oee_overview.assets_up_for_maintenance]
    filters:
      oee_overview.asset: Inspection Robot 001,Inspection Robot 002,Inspection Robot
        003
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    style_oee_overview.runtime_since_last_maintenance: "#3A4245"
    show_title_oee_overview.runtime_since_last_maintenance: true
    title_override_oee_overview.runtime_since_last_maintenance: Avg Runtime Since
      Last Maintenance
    title_placement_oee_overview.runtime_since_last_maintenance: above
    value_format_oee_overview.runtime_since_last_maintenance: '##,### "s"'
    style_oee_overview.runtime_until_next_maintenance: "#3A4245"
    show_title_oee_overview.runtime_until_next_maintenance: true
    title_override_oee_overview.runtime_until_next_maintenance: Avg Runtime Until
      Next Maintenance
    title_placement_oee_overview.runtime_until_next_maintenance: above
    value_format_oee_overview.runtime_until_next_maintenance: '##,### "s"'
    show_comparison_oee_overview.runtime_until_next_maintenance: false
    style_oee_overview.asset_life: "#3A4245"
    show_title_oee_overview.asset_life: true
    title_override_oee_overview.asset_life: Avg Asset Life
    title_placement_oee_overview.asset_life: above
    value_format_oee_overview.asset_life: '##,### "s"'
    show_comparison_oee_overview.asset_life: false
    style_oee_overview.asset_max_life: "#3A4245"
    show_title_oee_overview.asset_max_life: true
    title_placement_oee_overview.asset_max_life: above
    value_format_oee_overview.asset_max_life: ''
    show_comparison_oee_overview.asset_max_life: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 0
    hidden_pivots: {}
    listen: {}
    row: 25
    col: 19
    width: 5
    height: 5
  - title: Maintenance
    name: Maintenance (3)
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [oee_overview.assets_up_for_maintenance, maintenance.machine_health]
    filters:
      maintenance.asset: Assembly Robot 001,Assembly Robot 002
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    style_oee_overview.assets_up_for_maintenance: "#3A4245"
    show_title_oee_overview.assets_up_for_maintenance: true
    title_placement_oee_overview.assets_up_for_maintenance: above
    value_format_oee_overview.assets_up_for_maintenance: ''
    style_maintenance.mean_time_between_failures: "#3A4245"
    show_title_maintenance.mean_time_between_failures: true
    title_placement_maintenance.mean_time_between_failures: above
    value_format_maintenance.mean_time_between_failures: ''
    show_comparison_maintenance.mean_time_between_failures: false
    style_maintenance.average_unplanned_downtime: "#3A4245"
    show_title_maintenance.average_unplanned_downtime: true
    title_placement_maintenance.average_unplanned_downtime: above
    value_format_maintenance.average_unplanned_downtime: ''
    show_comparison_maintenance.average_unplanned_downtime: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 0
    listen:
      Site: oee_overview.site
    row: 9
    col: 14
    width: 10
    height: 5
  - title: Maintenance
    name: Maintenance (4)
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [oee_overview.assets_up_for_maintenance, maintenance.machine_health]
    filters:
      maintenance.asset: Material Handling Robot 001,Material Handling Robot 002
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    style_oee_overview.assets_up_for_maintenance: "#3A4245"
    show_title_oee_overview.assets_up_for_maintenance: true
    title_placement_oee_overview.assets_up_for_maintenance: above
    value_format_oee_overview.assets_up_for_maintenance: ''
    style_maintenance.mean_time_between_failures: "#3A4245"
    show_title_maintenance.mean_time_between_failures: true
    title_placement_maintenance.mean_time_between_failures: above
    value_format_maintenance.mean_time_between_failures: ''
    show_comparison_maintenance.mean_time_between_failures: false
    style_maintenance.average_unplanned_downtime: "#3A4245"
    show_title_maintenance.average_unplanned_downtime: true
    title_placement_maintenance.average_unplanned_downtime: above
    value_format_maintenance.average_unplanned_downtime: ''
    show_comparison_maintenance.average_unplanned_downtime: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 0
    listen:
      Site: oee_overview.site
    row: 17
    col: 14
    width: 10
    height: 5
  - title: Maintenance
    name: Maintenance (5)
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [oee_overview.assets_up_for_maintenance, maintenance.machine_health]
    filters:
      maintenance.asset: HAAS Mini Mill 001,HAAS Mini Mill 002
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    style_oee_overview.assets_up_for_maintenance: "#3A4245"
    show_title_oee_overview.assets_up_for_maintenance: true
    title_placement_oee_overview.assets_up_for_maintenance: above
    value_format_oee_overview.assets_up_for_maintenance: ''
    style_maintenance.mean_time_between_failures: "#3A4245"
    show_title_maintenance.mean_time_between_failures: true
    title_placement_maintenance.mean_time_between_failures: above
    value_format_maintenance.mean_time_between_failures: ''
    show_comparison_maintenance.mean_time_between_failures: false
    style_maintenance.average_unplanned_downtime: "#3A4245"
    show_title_maintenance.average_unplanned_downtime: true
    title_placement_maintenance.average_unplanned_downtime: above
    value_format_maintenance.average_unplanned_downtime: ''
    show_comparison_maintenance.average_unplanned_downtime: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 0
    listen:
      Site: oee_overview.site
    row: 33
    col: 14
    width: 10
    height: 5
  - title: 'Maintenance '
    name: 'Maintenance '
    model: mde_analytics
    explore: oee_overview
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [oee_overview.assets_up_for_maintenance, maintenance.machine_health]
    filters:
      maintenance.asset: HAAS 5-Axis CNC 001,HAAS 5-Axis CNC 002
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    style_oee_overview.assets_up_for_maintenance: "#3A4245"
    show_title_oee_overview.assets_up_for_maintenance: true
    title_placement_oee_overview.assets_up_for_maintenance: above
    value_format_oee_overview.assets_up_for_maintenance: ''
    style_maintenance.mean_time_between_failures: "#3A4245"
    show_title_maintenance.mean_time_between_failures: true
    title_placement_maintenance.mean_time_between_failures: above
    value_format_maintenance.mean_time_between_failures: ''
    show_comparison_maintenance.mean_time_between_failures: false
    style_maintenance.average_unplanned_downtime: "#3A4245"
    show_title_maintenance.average_unplanned_downtime: true
    title_placement_maintenance.average_unplanned_downtime: above
    value_format_maintenance.average_unplanned_downtime: ''
    show_comparison_maintenance.average_unplanned_downtime: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 0
    listen:
      Site: oee_overview.site
    row: 41
    col: 14
    width: 10
    height: 5
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
