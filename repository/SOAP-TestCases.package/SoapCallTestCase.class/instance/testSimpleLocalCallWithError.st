testing
testSimpleLocalCallWithError
	| call resp |
	SoapServiceHandler default  add: self simpleAddService.
	call := SoapCallEntry local newCall.
	call transport: #localRpc.
	call methodName: 'add'.
	call addParameter: (SoapVariable name: #badArg1 value: 1).
	resp := call invoke.
	self should:[resp isFault].
	self should:[resp returnValue = nil].
	self should:[resp raiseException] raise: SoapInvalidParamName.
		
	SoapServiceHandler default remove: self simpleAddService.