// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Belt_Float from "rescript/lib/es6/belt_Float.js";

function Balance(Props) {
  var balance = Props.balance;
  var f = Belt_Float.fromString(balance.toFixed(2));
  return React.createElement("div", {
              className: "flex-col gap-1",
              id: "Balance"
            }, React.createElement("h3", {
                  className: "bold"
                }, "YOUR BALANCE"), React.createElement("p", {
                  className: "amount"
                }, React.createElement("em", undefined, "$ "), f !== undefined ? f : 0.0));
}

var make = Balance;

export {
  make ,
  
}
/* react Not a pure module */
