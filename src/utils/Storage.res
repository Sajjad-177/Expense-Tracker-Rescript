// For setting item from session storage
let setToSessionStorage = (key: string, value: 'a) => {
  Dom_storage2.setItem(Dom_storage2.sessionStorage, key, Js.Json.stringifyAny(value)->Belt.Option.getExn)
}

// For getting item from session storage
let getFromSessionStorage = (key: string, parser) => {
  Dom_storage2.getItem(Dom_storage2.sessionStorage, key)->Belt.Option.getExn->parser
}
