%%raw("import './Amount.css'")

module AmountCard = {
  @react.component
  let make = (~className: string, ~title: string, ~amount: float): React.element => {
    <div className={"flex-1 flex-col align-center gap-1 " ++ className}>
      <h3 className="bold"> {title->React.string} </h3>
      <p className="amount-font">
        <em> {"$ "->React.string} </em> {amount->Belt.Float.toString->React.string}
      </p>
    </div>
  }
}

@react.component
let make = (~income: float, ~expense: float) => {
  <div className="amount flex-row">
    <AmountCard className="income-card" title="INCOME" amount={income} />
    <AmountCard className="expense-card" title="EXPENSE" amount={expense} />
  </div>
}
