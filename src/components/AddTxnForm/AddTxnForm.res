%%raw("import './AddTxnForm.css'")
open Types
open Constants

@react.component
let make = (~appSetState) => {
  let (state, setState) = React.useState(() => {remark: "", amount: ""})

  let handleChange = event => {
    ReactEvent.Form.preventDefault(event)
    switch ReactEvent.Form.target(event)["name"] {
    | "remark" => setState(prevData => {...prevData, remark: ReactEvent.Form.target(event)["value"]})
    | "amount" => setState(prevData => {...prevData, amount: ReactEvent.Form.target(event)["value"]})
    | _ => ()
    }
  }

  let handleFormSubmit = event => {
    ReactEvent.Form.preventDefault(event)
    AddTxnFormUtils.handleSubmit(state, appSetState)
    setState(_ => {remark: "", amount: ""})
  }

  <div id="AddTxnForm" className="flex-col gap-1">
    <h3 className="border-btm bold"> {"ADD TRANSACTION"->React.string} </h3>

    <form onSubmit={handleFormSubmit} className="flex-col gap-2">

      <div className="flex-col form-element">
        <label> {remark_label->React.string} </label>
        <input
          type_="text"
          name="remark"
          required=true
          value={state.remark}
          onChange={handleChange}
           placeholder=remark_placeholder
        />
      </div>

      <div className="flex-col form-element">
        <label>
          {amount_label["label"]->React.string}
          <em>{amount_label["sub-label"]->React.string}</em>
        </label>
        <input
          type_="number"
          name="amount"
          required=true
          step=0.01
          value={state.amount}
          onChange={handleChange}
          placeholder=amount_placeholder
        />
      </div>
      
      <input type_="submit" value=submit_button_label className="block" />
    </form>
  </div>
}
