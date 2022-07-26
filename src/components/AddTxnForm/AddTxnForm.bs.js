// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as Constants from "../../utils/Constants.bs.js";
import * as AddTxnFormUtils from "./AddTxnFormUtils.bs.js";

import './AddTxnForm.css'
;

function AddTxnForm(Props) {
  var appSetState = Props.appSetState;
  var match = React.useState(function () {
        return {
                remark: "",
                amount: ""
              };
      });
  var setState = match[1];
  var state = match[0];
  var handleChange = function ($$event) {
    $$event.preventDefault();
    var match = $$event.target.name;
    switch (match) {
      case "amount" :
          return Curry._1(setState, (function (prevData) {
                        return {
                                remark: prevData.remark,
                                amount: $$event.target.value
                              };
                      }));
      case "remark" :
          return Curry._1(setState, (function (prevData) {
                        return {
                                remark: $$event.target.value,
                                amount: prevData.amount
                              };
                      }));
      default:
        return ;
    }
  };
  var handleFormSubmit = function ($$event) {
    $$event.preventDefault();
    AddTxnFormUtils.handleSubmit(state, appSetState);
    return Curry._1(setState, (function (param) {
                  return {
                          remark: "",
                          amount: ""
                        };
                }));
  };
  return React.createElement("div", {
              className: "flex-col gap-1",
              id: "AddTxnForm"
            }, React.createElement("h3", {
                  className: "border-btm bold"
                }, "ADD TRANSACTION"), React.createElement("form", {
                  className: "flex-col gap-2",
                  onSubmit: handleFormSubmit
                }, React.createElement("div", {
                      className: "flex-col form-element"
                    }, React.createElement("label", undefined, Constants.remark_label), React.createElement("input", {
                          name: "remark",
                          placeholder: Constants.remark_placeholder,
                          required: true,
                          type: "text",
                          value: state.remark,
                          onChange: handleChange
                        })), React.createElement("div", {
                      className: "flex-col form-element"
                    }, React.createElement("label", undefined, Constants.amount_label.label, React.createElement("em", undefined, Constants.amount_label["sub-label"])), React.createElement("input", {
                          name: "amount",
                          placeholder: Constants.amount_placeholder,
                          required: true,
                          step: 0.01,
                          type: "number",
                          value: state.amount,
                          onChange: handleChange
                        })), React.createElement("input", {
                      className: "block",
                      type: "submit",
                      value: Constants.submit_button_label
                    })));
}

var make = AddTxnForm;

export {
  make ,
  
}
/*  Not a pure module */
