%%raw("import './History.css'")

@react.component
let make = (~history: array<Transaction.t>) => {
  <div className="flex-col gap-2">
    <h3 className="border-bottom bold"> {"HISTORY"->React.string} </h3>
    <div className="flex-col gap-1">
      {history
      ->Belt.Array.mapWithIndex((index, record) => {
        HistoryUtils.content_generator(record, index)
      })
      ->React.array}
    </div>
  </div>
}
