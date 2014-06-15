tests
testEchoBoolean

	| x |
	self assert: (x := self client echoBoolean: true).
	self deny: (x := self client echoBoolean: false).
	self should: [ x := self client echoBoolean: #junk ] raise: SoapError.