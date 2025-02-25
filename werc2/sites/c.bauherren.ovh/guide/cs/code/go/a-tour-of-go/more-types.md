# A tour of go

Taken from [go.dev](//go.dev/tour)

## Pointers

Pointers hold the memory address of a value

The type `*T# is a pointer to a `T` value. Its zero value in `nil`

`var p *int`

The & operater generates a pointer to its operand

`i := 42`

`p = &i`
