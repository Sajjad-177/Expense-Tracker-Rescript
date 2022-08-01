%%raw("import './AddTransactionForm.css'")
open Constants

@react.component
let make = (~update_state) => {
  let (state: Transaction.t, setState) = React.useState(() => {Transaction.remark: "", Transaction.amount: ""})

  let handleChange = event => {
    switch ReactEvent.Form.target(event)["name"] {
    | "remark" =>
      setState(prevData => {...prevData, remark: ReactEvent.Form.target(event)["value"]})
    | "amount" =>
      setState(prevData => {...prevData, amount: ReactEvent.Form.target(event)["value"]})
    | _ => ()
    }
  }

  let handleFormSubmit = event => {
    ReactEvent.Form.preventDefault(event)
    AddTransactionFormUtils.handleSubmit(state, update_state)
    setState(_ => {remark: "", amount: ""})
  }

  <div className="flex-col gap-1">
    <h3 className="border-bottom bold"> {"ADD TRANSACTION"->React.string} </h3>
    <form onSubmit={handleFormSubmit} className="flex-col gap-2">
      <div className="flex-col gap-1">
        <label> {remark_label->React.string} </label>
        <input
          className="form-input"
          type_="text"
          name="remark"
          required=true
          value={state.remark}
          onChange={handleChange}
          placeholder=remark_placeholder
        />
      </div>
      <div className="flex-col gap-1">
        <label>
          {amount_label["label"]->React.string} <em> {amount_label["sub-label"]->React.string} </em>
        </label>
        <input
          className="form-input"
          type_="number"
          name="amount"
          required=true
          step=0.01
          value={state.amount}
          onChange={handleChange}
          placeholder=amount_placeholder
        />
      </div>
      <input type_="submit" value=submit_button_label className="block form-input submit-button" />
    </form>
  </div>
}
