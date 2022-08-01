%%raw("import './App.css'")
open Constants
@scope("JSON") @val
external parse: string => array<Transaction.t> = "parse"

@react.component
let make = () => {
  // App's state
  let (transactions, setTransactions) = React.useState(_ => Storage.getFromSessionStorage(session_storage_key, parse))

  React.useEffect1(() => {
    Storage.setToSessionStorage(session_storage_key, transactions)
    None
  }, [transactions])

  <div className="app">
    <div className="flex-col app-container">
      <Header />
      <Balance
        balance={AppUtils.getTotalIncome(transactions) -. AppUtils.getTotalExpense(transactions)}
      />
      <Amount
        income={AppUtils.getTotalIncome(transactions)}
        expense={AppUtils.getTotalExpense(transactions)}
      />
      <History history={transactions} />
      <AddTransactionForm update_state={setTransactions} />
    </div>
  </div>
}
