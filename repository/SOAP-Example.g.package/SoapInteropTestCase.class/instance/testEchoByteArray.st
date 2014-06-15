tests
testEchoByteArray

	| ba x |
	ba := self byteArrayValue.
	self assert: (x := self client echoByteArray: ba) = ba.