testing
testSimpleHttpCallWithError
	| handlerName call resp |
	SoapServerSetup startOnly: #(http).
	self waitAMoment.
	
	handlerName := SoapServiceHandler useTestServiceHandler ifTrue: [#test] ifFalse: [#default].
	(SoapServiceHandler named: handlerName ) add: self simpleAddService.
	call := (SoapCallEntry local: (SoapServerSetup defaultPortAt: #http)) newCall.
	call methodName: 'add'.
	call addParameter: (SoapVariable name: #badArg1 value: 1).

	resp := call invoke.
	self should:[resp isFault].
	self should:[resp returnValue = nil].
	self should:[resp raiseException] raise: SoapInvalidParamName.
	
	
	(SoapServiceHandler named: handlerName) remove: self simpleAddService.