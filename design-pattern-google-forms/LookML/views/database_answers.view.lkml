view: database_answers {
  sql_table_name: `my-project.my-dataset.A000111_DatabaseAnswers` ;;

  dimension: database {
    primary_key: yes
    type: string
    sql: ${TABLE}.Database ;;
  }

  dimension: response_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RESPONSE_ID ;;
  }
}
