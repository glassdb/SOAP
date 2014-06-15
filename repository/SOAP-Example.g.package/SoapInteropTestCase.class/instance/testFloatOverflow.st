tests
testFloatOverflow

	| x |
	"overflow"
	self should: [ x := self client echoFloat: 3.5e38 ] raise: SoapError.