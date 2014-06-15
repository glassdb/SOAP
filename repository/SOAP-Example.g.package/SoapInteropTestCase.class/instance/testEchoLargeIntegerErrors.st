tests
testEchoLargeIntegerErrors

	| x |
	"overflow"
	self should: [ x := self client echoInteger: 2147483648 ] raise: SoapError.
	"underflow"
	self should: [ x := self client echoInteger: -2147483649 ] raise: SoapError.