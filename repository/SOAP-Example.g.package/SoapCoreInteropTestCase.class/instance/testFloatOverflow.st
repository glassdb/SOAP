tests
testFloatOverflow

	| a x |
	"no overflow"
	a := 3.5e38.
	self should: (x := self client echoFloat: a) = a.