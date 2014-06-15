tests
testEchoNumberErrors

	| x |
	"junk"
	self should: [ x := self client echoInteger: '1234junk' ] raise: SoapError.
	"junk with whitespace"
	self should: [ x := self client echoInteger: '&#xd;
	 1234 &#xd;
	' ] raise: SoapError.

	"double overflow"
	self should: [ x := self client echoFloat: '1.8e308' ] raise: SoapError.

	"junk"
	self should: [ x := self client echoFloat: '1234junk' ] raise: SoapError.
	"junk with whitespace"
	self should: [ x := self client echoFloat: '&#xd;
	 1234 &#xd;
	' ] raise: SoapError.