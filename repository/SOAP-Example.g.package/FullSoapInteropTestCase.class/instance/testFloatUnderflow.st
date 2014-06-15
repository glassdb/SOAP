tests
testFloatUnderflow

	| x |
	"underflow"
	self should: [ x := self client echoFloat: 6.9e-46 ] raise: SoapError.