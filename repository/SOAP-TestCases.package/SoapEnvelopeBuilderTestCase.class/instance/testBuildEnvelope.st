testing
testBuildEnvelope
	| builder env body methodElem argElem |
	builder := SoapEnvelopeBuilder new.
	env := builder buildSoapEnvelopeFromXmlString: (self echoInteger).

	self should: [env name = #'SOAP-ENV:Envelope'].
	self should:[ (env getAttributeNamed: 'SOAP-ENV:encodingStyle') = 'http://schemas.xmlsoap.org/soap/encoding/'].
	self should:[ (env getAttributeNamed: 'xmlns:SOAP-ENC') = 'http://schemas.xmlsoap.org/soap/encoding/'].
	self should:[ (env getAttributeNamed: 'xmlns:SOAP-ENV') = 'http://schemas.xmlsoap.org/soap/envelope/'].
	self should:[ (env getAttributeNamed: 'xmlns:xsd') = 'http://www.w3.org/2001/XMLSchema'].
	self should:[ (env getAttributeNamed: 'xmlns:xsi') = 'http://www.w3.org/2001/XMLSchema-instance'].
	
	body := env body.
	self should: [body name = #'SOAP-ENV:Body'].
	
	methodElem := body findBodyEntryNamed: #'m:echoInteger'.
	self should: [methodElem notNil].
	self should: [methodElem name = #'m:echoInteger'].
	self should: [(methodElem getAttributeNamed: 'xmlns:m') = 'http://soapinterop.org/'].
	
	argElem := methodElem children first.
	self should: [argElem name =  #'inputInteger'].
	self should: [argElem value = '42'].