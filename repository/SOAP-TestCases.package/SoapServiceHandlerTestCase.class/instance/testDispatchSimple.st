testing
testDispatchSimple
	| handler env ret |
	handler := SoapServiceHandler new.
	handler add: self simpleService.
	env := handler dispatch: self simpleEnvelope with: self simpleContext.
	self shouldnt:[env body hasFault].

	ret := env body bodyEntries first.
	
	self should:[ ret name = 'm:addResponse'].
	self should: [ ret encodingStyleURIs = #('http://schemas.xmlsoap.org/soap/encoding/')].
	self should:[ret firstChild xsiType = 'xsd:string'].
	self should:[ ret firstChild value = '1'].