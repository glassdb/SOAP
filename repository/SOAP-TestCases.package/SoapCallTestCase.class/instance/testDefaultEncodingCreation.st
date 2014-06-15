testing
testDefaultEncodingCreation
	| call |
	call := SoapCall new.
	call targetObjectURI: 'urn:target:1'.
	call encoding: #soapEncoding.
	self should: [call encoder class = SoapEncoder].