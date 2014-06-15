testing
testCannotConnectResolveCall
	| call resp |

	call := (SoapCallEntry tcpHost: 'foobarbazboo' port: 8823) newCall.
	call transport: #http.
	call methodName: 'helloWorld'.
	
	resp := call invoke.
	
	self should:[resp isFault].
	self should:[resp returnValue = nil].
	self should: [resp raiseException] raise: SoapCannotResolveServer