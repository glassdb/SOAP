testing
testSimpleEnvelopeCreateinForDocumentLiteral
	"self debug: #testSimpleEnvelopeCreateinForDocumentLiteral"
	| call env arg1 arg2 paramElems |
	call := (SoapCallEntry tcpHost: 'www.somehost.com' port: 80) newCall.
	call style: #document.
	call useLiteral: true.
	call addParameters: {{#xElement. 1.2}. {#yElement. 2.0}}.
	env := call buildEnvelope.
	
	self should: [env name = 'env:Envelope'].
	self should: [env body name = 'env:Body'].
	paramElems := env body bodyEntries.
	arg1 := paramElems at: 1.
	self should: [ arg1 name = #'xElement'].
	self should:[ (arg1 xsiType) = nil]. 
	self should:[ arg1 value = '1.2000000000000000E+00']. 
	arg2 := paramElems at: 2.
	self should: [ arg2 name = #'yElement'].
	self should:[ (arg2 xsiType) = nil]. 
	self should:[ arg2 value = '2.0000000000000000E+00'].