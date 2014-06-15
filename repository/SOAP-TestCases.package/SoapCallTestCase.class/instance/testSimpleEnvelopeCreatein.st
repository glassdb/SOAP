testing
testSimpleEnvelopeCreatein
	| call env methodElem arg1 arg2 |
	call := SoapCall new.
	call methodName: 'auau'.
	call addParameter: (SoapVariable name: #arg1 value: 1).
	call addParameter: (SoapVariable name: #arg2 value: 'two').
	env := call buildEnvelope.
	
	self should: [env name = 'env:Envelope'].
	self should: [env body name = 'env:Body'].
	methodElem := env body bodyEntries first.
	self should: [ methodElem name = 'm:auau'].
	arg1 := methodElem children at: 1.
	self should:[ arg1 name = #'arg1']. 
	self should:[ (arg1 xsiType) = 'xsd:integer']. 
	self should:[ arg1 value = '1']. 
	arg2 := methodElem children at: 2.
	self should:[ arg2 name = #'arg2']. 
	self should:[ (arg2 xsiType) = 'xsd:string']. 
	self should:[ arg2 value = 'two'].