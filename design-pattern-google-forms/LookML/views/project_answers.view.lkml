view: project_answers {
  sql_table_name: `my-project.my-dataset.A000111_ProjectAnswers`;;

  dimension: analytics_expertise {
    view_label: "Core Answers"
    type: number
    sql: ${TABLE}.AnalyticsExpertise ;;
  }

  dimension: country {
    view_label: "Core Answers"
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: domainname {
    view_label: "Core Answers"
    type: string
    sql: ${TABLE}.Domainname ;;
  }

  dimension: email_address {
    view_label: "Core Answers"
    type: string
    sql: ${TABLE}.EmailAddress ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.Platform ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.Project ;;
  }

  dimension: response_id {
    primary_key: yes
    view_label: "Core Answers"
    type: number
    sql: ${TABLE}.RESPONSE_ID ;;
  }

  dimension_group: timestamp {
    view_label: "Core Answers"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.Timestamp ;;
  }

  dimension: title {
    view_label: "Core Answers"
    type: string
    sql: ${TABLE}.Title ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [domainname]
  }

  measure: count_responses {
    view_label: "Core Answers"
    type: count_distinct
    sql: ${response_id} ;;
    drill_fields: [response_id, title, email_address]
  }

  measure: count_domains {
    view_label: "Core Answers"
    type: count_distinct
    sql:  ${domainname};;
    drill_fields: [domainname, account.type, account.owner_id, count_responses]
  }

}
