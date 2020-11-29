@bs.val external document: 'a = "document"

Js.log(document["getElementById"]("app"))

let red = {
  open Css
  style(list{color(#rgb(255, 0, 0))})
}



ReactDOMRe.render(
  <App/>,
  document["getElementById"]("app"),
)
