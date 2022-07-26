%%raw("import './Amounts.css'")

@react.component
let make = (~income: float, ~expense: float) => {
  <div id="Amounts" className="flex-row">
    <div id="income-card" className="flex-1 flex-col align-center gap-1">
      <h3 className="bold"> {"INCOME"->React.string} </h3>
      <p className="amount">
        <em> {"$ "->React.string} </em> {income->Belt.Float.toString->React.string}
      </p>
    </div>
    <div id="amounts-border" />
    <div id="expense-card" className="flex-1 flex-col align-center gap-1">
      <h3 className="bold"> {"EXPENSE"->React.string} </h3>
      <p className="amount">
        <em> {"$ "->React.string} </em> {expense->Belt.Float.toString->React.string}
      </p>
    </div>
  </div>
}
