open Constants

let handleSubmit = (data: Transaction.t, update_state) => {
  let amount = Belt.Float.fromString(data.amount)->Belt.Option.getExn
  if amount === 0.0 {
    zero_amount_warning()
  } else {
    update_state(prevState => {
      let _tx = prevState->Js.Array2.unshift(data);
      prevState->Js.Array2.copy
    })
  }
}
