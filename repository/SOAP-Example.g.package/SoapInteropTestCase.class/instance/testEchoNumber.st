tests
testEchoNumber

	| a x |
	self assert: (self client echoInteger: self integerValue) == self integerValue.
	self assert: (x := self client echoFloat: self floatValue) = self floatValue.
	a := 2147483647.
	self assert: (self client echoInteger: a) = a.
	a := -2147483648.
	self assert: (self client echoInteger: a) = a.