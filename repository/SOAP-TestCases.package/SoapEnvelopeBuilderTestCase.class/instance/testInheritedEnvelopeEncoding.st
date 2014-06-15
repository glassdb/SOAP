testing
testInheritedEnvelopeEncoding
	| builder env body methodElem argElem |
	builder := SoapEnvelopeBuilder new.
	env := builder buildSoapEnvelopeFromXmlString: (self echoBoolean).

	self should: [env name = #'SOAP-ENV:Envelope'].
	self should:[env encodingStyleURIs =  #('http://schemas.xmlsoap.org/soap/encoding/')].	

	body := env body.
	self should: [body name = #'SOAP-ENV:Body'].
	
	methodElem := body findBodyEntryNamed: #'m:echoBoolean'.
	self should: [methodElem notNil].
	self should: [methodElem name = #'m:echoBoolean'].
	self should: [(methodElem getAttributeNamed: 'xmlns:m') = 'http://soapinterop.org/'].	
	
	argElem := methodElem children first.
	self should:[argElem encodingStyleURIs =  #('http://schemas.xmlsoap.org/soap/encoding/')].
	self should: [argElem name =  #'inputBoolean'].
	self should: [argElem value = '1'].