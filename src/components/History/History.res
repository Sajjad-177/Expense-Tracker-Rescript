%%raw("import './History.css'")
open Types

@react.component
let make = (~history: array<txn_record>) => {
  <div id="History" className="flex-col gap-2">
    <h3 className="border-btm bold"> {"HISTORY"->React.string} </h3>
    <div id="history-list" className="flex-col gap-1">
      {history
      ->Belt.Array.mapWithIndex((index, record) => {
        HistoryUtils.html_generator(record, index)
      })
      ->React.array}
    </div>
  </div>
}
