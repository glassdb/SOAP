tests
testDoubleUnderflow

	| x |
	"double underflow"
	self should: [ x := self client echoFloat: '2.4e-360' ] raise: SoapError.