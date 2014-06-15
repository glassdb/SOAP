tests
testEchoStruct

	| a |
	self assert: (a := self client echoStruct: self structValue) = self structValue.