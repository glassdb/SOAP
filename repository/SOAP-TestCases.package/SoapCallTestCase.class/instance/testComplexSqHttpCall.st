testing
testComplexSqHttpCall
	| handlerName call resp |
	SoapServerSetup startOnly: #(http).
	self waitAMoment.
	
	handlerName := SoapServiceHandler useTestServiceHandler ifTrue: [#test] ifFalse: [#default].
	(SoapServiceHandler named: handlerName ) add: self simpleAddService.
	call := (SoapCallEntry local: (SoapServerSetup defaultPortAt: #http)) newCall.
	call transport: #http.
	call encoding: #soapSqEncoding.
	call methodName: 'add'.
	call addParameter: (SoapVariable name: #newElem).
	
	resp := call invokeWithValue: #symbol.
	self shouldnt:[resp isFault].
	self should:[resp returnValue = #symbol].
	
	resp := call invokeWithValue: Date today.
	self shouldnt:[resp isFault].
	self should:[resp returnValue = Date today].
	
	resp := call invokeWithValue: (OrderedCollection with: #(1 2 #('three' 3) with: Date today)).
	self shouldnt:[resp isFault].
	self should:[resp returnValue = (OrderedCollection with: #(1 2 #('three' 3) with: Date today))].
	
	(SoapServiceHandler named: handlerName) remove: self simpleAddService.