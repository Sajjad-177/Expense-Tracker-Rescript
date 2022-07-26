open Types

let html_generator = (record: txn_record, index: int) => {
  let className: string = switch record.amount->Belt.Float.fromString {
    | None => ""
    | Some(amt) => amt > 0.0 ? "history-record-income" : "history-record-expense"
  }

  <div key={index->Belt.Int.toString} className={className ++ " flex-row"}>
    <p> {record.remark->React.string} </p>
    <p className="">
      <em> {"$ "->React.string} </em>
      {switch record.amount->Belt.Float.fromString {
      | None => ""
      | Some(amount) =>
        amount > 0.0 ? amount->Belt.Float.toString : (amount *. -1.0)->Belt.Float.toString
      }->React.string}
    </p>
  </div>
}