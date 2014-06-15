testing
testZeroDivideSignal
	
	| fault builder exception |
	fault := self zeroDivideFault.
	builder := SoapExceptionBuilder new.
	exception := builder buildExceptionFrom: fault.
	self should:[exception signal] raise: ZeroDivide.