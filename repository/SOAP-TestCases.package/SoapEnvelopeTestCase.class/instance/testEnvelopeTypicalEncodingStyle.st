testing
testEnvelopeTypicalEncodingStyle
	| env body |
	env := SoapEnvelope new.
	env declareSoapEncEncoding.
	self should: [ (env getAttributeNamed: (SoapConstants soapEnvPrefix,':', SoapConstants encodingStyle) ) 
			= SoapConstants soapEncURI].
	self should: [env encodingStyleURIs = (Array with: (SoapConstants soapEncURI))].
	
	body := env addBody.
	self should: [body encodingStyleURIs = (Array with: (SoapConstants soapEncURI))].