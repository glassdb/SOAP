tests
testEchoString

	self assert: (self client echoString: self stringValue) = self stringValue.
	self assert: (self client echoString: self escapedStringValue) = self escapedStringValue.