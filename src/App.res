open Types

let rec eval = (expr) => {
  switch expr {
  | And(x, y) => eval(x) && eval(y)
  | Not(x) => !eval(x)
  | Value(x) => x
  }
}

let andd = (x, y) => And(x, y) 
let nott = (x) => Not(x) 
let orr = (x, y) => nott(andd(nott(x), nott(y)))

let lalk = eval(orr( Value(true), Value(false)))




module StyledBoard = %styled.div(`

`)

let boardComponent = (board: board) => {
    <StyledBoard>

    </StyledBoard>
}


module StyledApp = %styled.div(`
    color: blue;
`)

@react.component
let make = () => 
    <StyledApp>
        {React.string("Hi!")}
    </StyledApp>

