tests
testEchoZeroLengthArrays

	| a b x y |
	a := {}.
	self assert: (b := self client echoIntegerArray: a) = a.
	self assert: (b := self client echoFloatArray: a) = a.
	self assert: (b := self client echoStringArray: a) = a.
	self assert: (b := self client echoStructArray: a) = a.