testing
testComplexSqEncoding
	| call pa1 pa2 env methodElem arg1 arg2 |
	call := SoapCall new.
	call transport: #localRpc.
	call targetObjectURI: 'urn:auauObject'.
	call encoding: #soapSqEncoding.
	call methodName: 'auau'.
	pa1 := (SoapVariable name: #arg1 value: 1).
	pa2 := (SoapVariable name: #arg2 value: #two) encoding: #soapSqEncoding.
	call addParameter: pa1.
	call addParameter: pa2.
	env := call buildEnvelope.
	
	self should: [env name = 'env:Envelope'].
	self should: [env body name = 'env:Body'].
	self should: [(env getAttributeNamed: 'env:encodingStyle') = SoapConstants soapSqEncURI]. 
	methodElem := env body bodyEntries first.
	self should: [ methodElem name = 'm:auau'].
	arg1 := methodElem children at: 1.
	self should:[ arg1 name = #'arg1']. 
	self should:[ (arg1 getAttributeNamed: 'xsi:type') = 'xsd:integer']. 
	self should:[ (arg1 encodingStyleURIs first) = SoapConstants soapSqEncURI]. 
	self should:[ arg1 value = '1']. 
	arg2 := methodElem children at: 2.
	self should:[ arg2 name = #'arg2']. 
	self should:[ (arg2 getAttributeNamed: 'xsi:type') =  'Squeak-ENC:ReferenceStream'].