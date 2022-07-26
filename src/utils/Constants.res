let session_storage_key = "Expense Tracker"

let zero_amount_warning = () => {let _ = %raw("alert('Zero amount not allowed!!!')")}

let header = "EXPENSE TRACKER"

let remark_label = "Remark"
let remark_placeholder = "Enter remark"

let amount_label = {
    "label" : "Amount ",
    "sub-label" : "( Negative - Expense , Positive - Income )"
}
let amount_placeholder = "Enter amount"

let submit_button_label = "Add Transaction"