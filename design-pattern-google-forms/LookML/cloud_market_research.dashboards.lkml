- dashboard: cloud_market_research
  title: Cloud Market Research
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Platforms Initiative Realizations
    name: Platforms Initiative Realizations
    model: survey
    explore: project_answers
    type: looker_column
    fields: [project_answers.count_responses, project_answers.project, project_answers.platform]
    pivots: [project_answers.platform]
    filters:
      project_answers.platform: "-AWS Azure"
    sorts: [project_answers.project desc, project_answers.count_responses desc 0,
      project_answers.platform]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    defaults_version: 1
    listen: {}
    row: 12
    col: 0
    width: 10
    height: 6
  - title: Survey Participants by Job Title
    name: Survey Participants by Job Title
    model: survey
    explore: project_answers
    type: looker_pie
    fields: [project_answers.count_responses, project_answers.title]
    sorts: [project_answers.count_responses desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
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
    listen: {}
    row: 2
    col: 9
    width: 7
    height: 8
  - title: Number of Responses this Quarter
    name: Number of Responses this Quarter
    model: survey
    explore: project_answers
    type: single_value
    fields: [project_answers.count_responses, project_answers.timestamp_quarter]
    fill_fields: [project_answers.timestamp_quarter]
    sorts: [project_answers.timestamp_quarter desc]
    limit: 2
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    comparison_label: Last Quarter
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
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
    value_labels: legend
    label_type: labPer
    hidden_fields: [project_answers.timestamp_quarter]
    row: 2
    col: 1
    width: 8
    height: 4
  - title: Survey Participants by Analytics Level
    name: Survey Participants by Analytics Level
    model: survey
    explore: project_answers
    type: looker_pie
    fields: [project_answers.count_responses, project_answers.analytics_expertise]
    filters:
      project_answers.analytics_expertise: NOT NULL
    sorts: [project_answers.count_responses desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_types: {}
    defaults_version: 1
    row: 2
    col: 16
    width: 7
    height: 8
  - title: Language Proficiency by Job Title
    name: Language Proficiency by Job Title
    model: survey
    explore: project_answers
    type: looker_column
    fields: [programming_answers.average_level_value, programming_answers.language,
      project_answers.title]
    pivots: [programming_answers.language]
    filters:
      project_answers.analytics_expertise: NOT NULL
      programming_answers.language: Java,Python,R,SQL
    sorts: [programming_answers.language 0, programming_answers.average_level_value
        desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: row
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
    y_axes: [{label: Proficiency Level, orientation: left, series: [{axisId: programming_answers.average_level_value,
            id: Java - programming_answers.average_level_value, name: Java}, {axisId: programming_answers.average_level_value,
            id: Python - programming_answers.average_level_value, name: Python}, {
            axisId: programming_answers.average_level_value, id: R - programming_answers.average_level_value,
            name: R}, {axisId: programming_answers.average_level_value, id: SQL -
              programming_answers.average_level_value, name: SQL}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    font_size: '12'
    series_types: {}
    defaults_version: 1
    row: 12
    col: 10
    width: 14
    height: 12
  - title: Database Awareness by Analytics Expertise
    name: Database Awareness by Analytics Expertise
    model: survey
    explore: project_answers
    type: looker_column
    fields: [database_answers.database, project_answers.count_responses, project_answers.analytics_expertise]
    pivots: [project_answers.analytics_expertise]
    filters:
      project_answers.analytics_expertise: NOT NULL
    sorts: [database_answers.database, project_answers.analytics_expertise]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    x_axis_label: Experience Level
    hidden_series: [project_answers.analytics_expertise___null - project_answers.count_responses]
    series_types: {}
    series_labels:
      1 - project_answers.count_responses: Beginner
      2 - project_answers.count_responses: Novice
      3 - project_answers.count_responses: Intermediate
      4 - project_answers.count_responses: Proficient
      5 - project_answers.count_responses: Advanced
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
    row: 18
    col: 0
    width: 10
    height: 6
  - name: Cloud Market Research Survey
    type: text
    title_text: Cloud Market Research Survey
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Analytics Overview
    type: text
    title_text: Analytics Overview
    subtitle_text: ''
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 2
  - title: Survey Participants by CRM Account Type
    name: Survey Participants by CRM Account Type
    model: survey
    explore: project_answers
    type: looker_bar
    fields: [account.type, project_answers.count_domains]
    pivots: [account.type]
    sorts: [account.type]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Prospect - project_answers.count_responses,
            id: Prospect - project_answers.count_responses, name: Prospect}, {axisId: account.type___null
              - project_answers.count_responses, id: account.type___null - project_answers.count_responses,
            name: Not in CRM}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_labels:
      'null': Not in CRM
      account.type___null - project_answers.count_responses: Not in CRM
      account.type___null - project_answers.count_domains: Not in CRM
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
    listen: {}
    row: 6
    col: 1
    width: 8
    height: 4
