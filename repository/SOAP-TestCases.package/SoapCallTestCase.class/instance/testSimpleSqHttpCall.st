testing
testSimpleSqHttpCall
	| handlerName call resp |
	SoapServerSetup startOnly: #(http). 
	self waitAMoment.
	
	handlerName := SoapServiceHandler useTestServiceHandler ifTrue: [#test] ifFalse: [#default].
	(SoapServiceHandler named: handlerName ) add: self simpleAddService.
	call := (SoapCallEntry local: (SoapServerSetup defaultPortAt: #http)) newCall.
	call transport: #http.
	call encoding: #soapSqEncoding.
	call methodName: 'add'.
	call addParameter: (SoapVariable name: #newElem value: 1).
	
	resp := call invoke.
	
	self shouldnt:[resp isFault].
	self should:[resp returnValue = 1].
	
	(SoapServiceHandler named: handlerName) remove: self simpleAddService.