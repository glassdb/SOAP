tests
testEchoLargeIntegerErrors

	| a x |
	"no overflow"
	a := 2147483648.
	self should: (x := self client echoInteger: a) = a.
	"no underflow"
	a:= -2147483649.
	self should: (x := self client echoInteger: a) = a.