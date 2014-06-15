tests
testFloatUnderflow

	| a x |
	"no underflow"
	a := 6.9e-46.
	self should: (x := self client echoFloat: a) = a.