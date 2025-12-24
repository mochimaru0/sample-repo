view: view_test {
  sql_table_name: `sts-osaka-ikefuji-work.sandbox.view_test` ;;

  dimension: base {
    type: string
    sql: ${TABLE}.base ;;
    label: "拠点"
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
    label: "メールアドレス"
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
    label: "名前"
  }
  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
    label: "ユニット"
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
