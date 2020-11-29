type rec expr = 
    | And(expr, expr)
    | Not(expr)
    | Value(bool)

type position = (int, int)

type operator = {
    position: position,
    name: string,
    expr: expr
}

type connection = {
    operator: position,
    input: int,
    output: int
}

type board = {
    position: (int, int),
    operators: array<operator>,
    connections: array<connection>,
    inputs: int,
    outputs: int,
}