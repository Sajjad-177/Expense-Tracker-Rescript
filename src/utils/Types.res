// type of each history record
type txn_record = {
  remark: string,
  amount: string,
}

// type of App's state
type app_state = {
  income: float,
  expense: float,
  history: array<txn_record>,
}

@scope("JSON") @val
external parseAppState: string => app_state = "parse"