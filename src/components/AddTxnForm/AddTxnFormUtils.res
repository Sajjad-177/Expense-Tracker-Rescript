open Types
open Constants

let handleSubmit = (data: txn_record, setState) => {
  let amount = Belt.Float.fromString(data.amount)->Belt.Option.getExn
  if amount === 0.0 {
    zero_amount_warning()
  } else {
    setState(prevState => {
      {
        income: amount > 0.0 ? prevState.income +. amount : prevState.income,
        expense: amount < 0.0 ? prevState.expense +. amount *. -1.0 : prevState.expense,
        history: {
          let _ = prevState.history->Js.Array2.unshift(data)
          prevState.history
        },
      }
    })
  }
}
