%%raw("import './App.css'")
open Types
open Constants

@react.component
let make = () => {
  // App's state
  let (state, setState) = React.useState(_ => {
    income: 0.0,
    expense: 0.0,
    history: [],
  })

  React.useEffect0(() => {
    setState(_ => {
      Storage.getFromSessionStorage(session_storage_key, parseAppState)
    })
    None
  })

  React.useEffect1(() => {
    Storage.setToSessionStorage(session_storage_key, state)
    None
  }, [state])

  <div id="App" className="flex-col">
    <Header />
    <Balance balance={state.income -. state.expense} />
    <Amounts income={state.income} expense={state.expense} />
    <History history={state.history} />
    <AddTxnForm appSetState={setState} />
  </div>
}
