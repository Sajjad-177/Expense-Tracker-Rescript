@react.component
let make = (~balance: float) => {
  <div className="flex-col gap-1">
    <h3 className="bold"> {"YOUR BALANCE"->React.string} </h3>
    <p className="amount-font">
      <em> {"$ "->React.string} </em>
      {React.float(
        switch Js.Float.toFixedWithPrecision(balance, ~digits=2)->Belt.Float.fromString {
        | None => 0.0
        | Some(f) => f
        },
      )}
    </p>
  </div>
}
