let content_generator = (
  record: Transaction.t,
  index: int,
  getAccordionItemClass,
  accordionOnClick,
) => {
  let className: string = switch record.amount->Belt.Float.fromString {
  | None => ""
  | Some(amt) => amt > 0.0 ? "income" : "expense"
  }

  <div
    key={index->Belt.Int.toString}
    className={className ++ " history-record flex-row " ++ getAccordionItemClass(index)}
    onClick={_ => accordionOnClick(index)}>
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
