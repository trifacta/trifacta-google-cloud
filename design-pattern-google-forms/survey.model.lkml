connection: "my-connection"

include: "/views/*.view.lkml"
include: "*.dashboard"


explore: project_answers {
  join: programming_answers {
    type: inner
    relationship: one_to_one
    sql_on: ${programming_answers.response_id} = ${project_answers.response_id} ;;
  }
  join: database_answers {
    type: inner
    relationship: one_to_one
    sql_on: ${database_answers.response_id} = ${project_answers.response_id};;
  }
  join: account {
    view_label: "Account (CRM)"
    type: left_outer
    relationship: many_to_one
    sql_on: ${project_answers.domainname}=${account.website} ;;
  }
}
