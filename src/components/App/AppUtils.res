let getTotalIncome = (history: array<Transaction.t>): float => {
    Js.Array.reduce(
        (accumulator: float, record: Transaction.t) => {
            switch record.amount->Belt.Float.fromString {
                | None => {let _tx = Js.Exn.raiseTypeError("invalid amount value."); 0.0}
                | Some(amount) => {
                    if (amount > 0.0) {accumulator +. amount}
                    else {accumulator}
                }
            }
        },
        0.0,
        history
    )
}


let getTotalExpense = (history: array<Transaction.t>): float => {
    Js.Array.reduce(
        (accumulator: float, record: Transaction.t) => {
            switch record.amount->Belt.Float.fromString {
                | None => {let _tx = Js.Exn.raiseTypeError("invalid amount value."); 0.0}
                | Some(amount) => {
                    if (amount < 0.0) {accumulator +. (amount *. -1.0)}
                    else {accumulator}
                }
            }
        },
        0.0,
        history
    )
}