testing
testNotExistErrorClassSignal
	
	| fault builder |
	fault := self fooBarBazFault.
	builder := SoapExceptionBuilder new.
	
	self should:[builder buildExceptionFrom: fault] raise: SoapNoSuchExceptionClass.