testing
testSqEncodingCreation
	| call |
	call := SoapCall new.
	call targetObjectURI: 'urn:target:1'.
	call encoding: #soapSqEncoding.
	self should: [call encoder class = SoapSqEncoder].