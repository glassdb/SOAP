testing
testOverrideEncodingStyle
	| env body ent1 |
	env := SoapEnvelope new.
	env declareSoapEncEncoding.
	self should: [ (env getAttributeNamed: (SoapConstants soapEnvPrefix,':', SoapConstants encodingStyle) ) 
			= SoapConstants soapEncURI].
	self should: [env encodingStyleURIs = (Array with: (SoapConstants soapEncURI))].
	
	body := env addBody.
	body declareNamespace: 'b' uri: 'urn:body:1'.
	body declareEncodingIn: 'b' uri: 'urn:encoding:1'.
	self shouldnt: [body encodingStyleURIs = (Array with: (SoapConstants soapEncURI))].
	self should:[body encodingStyleURIs = (Array with: ('urn:encoding:1'))].
	
	ent1 := SoapWrapElement named: 'request1' withPrefix: 'm1'.
	ent1 declareNamespace: 'm1' uri: 'urn:request:1'.
	body declareEncodingIn: 'm1' uri: 'urn:encoding:2'.
	body addBodyEntry: ent1.
	self should:[ent1 encodingStyleURIs = (Array with: ('urn:encoding:2'))].