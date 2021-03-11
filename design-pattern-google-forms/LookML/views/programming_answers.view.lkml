view: programming_answers {
  sql_table_name: `my-project.my-dataset.A000111_ProgrammingAnswers`;;

  dimension: language {
    type: string
    sql: ${TABLE}.Language ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}.Level ;;
    order_by_field: level_value
  }

  dimension: level_value {
    type: number
    sql: case when ${level}='None' then 0 when ${level}='beginner' then 1
              when ${level}='competent' then 2 when ${level}='proficient' then 3
              when ${level}='expert' then 4 else null end;;
  }

  dimension: response_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.RESPONSE_ID ;;
  }

  measure: average_level_value {
    value_format_name: decimal_1
    type: average
    sql: ${level_value} ;;
  }

}
