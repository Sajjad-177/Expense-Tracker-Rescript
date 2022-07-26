%%raw("import './index.css'")

// Index
switch (ReactDOM.querySelector("#root")) {
    | Some(root) => ReactDOM.render(<App />, root)
    | None => Js.Console.error("Error in index... No root element!!")
}