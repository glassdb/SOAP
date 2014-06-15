tests
testEchoExceptionalFloats

	| x |
	self assert: (x := self client echoFloat: self NaN) _isNaN.
	self assert: (x := self client echoFloat: self PosInf) = self PosInf.
	self assert: (x := self client echoFloat: self NegInf) = self NegInf.