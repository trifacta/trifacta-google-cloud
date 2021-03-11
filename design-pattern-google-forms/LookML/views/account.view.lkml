view: account {
  sql_table_name: `leigha-bq-dev.testing.account2`;;
  drill_fields: [name, website, type, owner_id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: account_source {
    type: string
    sql: ${TABLE}.account_source ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_date ;;
  }

  dimension_group: customer__end__date___c {
    label: "Customer Start"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.customer__end__date___c ;;
  }

  dimension_group: customer__start__date___c {
    label: "Customer End"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.customer__start__date___c ;;
  }


  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }


  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: next_contract_renewal_date_c {
    label: "Next Contract Renewal"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_contract_renewal_date_c ;;
  }


  dimension: owner_id {
    label: "Salesforce Account Owner ID"
    type: string
    sql: substr(${TABLE}.owner_id,0,8) ;;
    action: {
      label: "Send a message to account owner"
      url: "https://placeholder.com"
      icon_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Google_Chat_icon_%282020%29.svg/982px-Google_Chat_icon_%282020%29.svg.png"
      form_param: {
        name: "Message"
        type: textarea
        default: "I recently received a survey result from an employee at your prospective customer account {{ account._name }}, let me know if you want to see the results!"
        required: yes
      }
    }
    required_fields: [name]
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.website ;;
  }


  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
