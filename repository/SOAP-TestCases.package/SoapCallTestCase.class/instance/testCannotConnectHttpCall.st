testing
testCannotConnectHttpCall
	| notUsedPort call resp |
	notUsedPort := 9876.
	call := (SoapCallEntry tcpHost: 'localhost' port: notUsedPort) newCall.
	call transport: #http.
	call methodName: 'helloWorld'.
	
	resp := call invoke.
	
	self should:[resp isFault].
	self should:[resp returnValue = nil].
	self should: [resp raiseException] raise: SoapCannotConnectToServer