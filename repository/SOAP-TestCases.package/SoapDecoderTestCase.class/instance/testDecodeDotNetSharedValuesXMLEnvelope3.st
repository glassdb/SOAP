testing
testDecodeDotNetSharedValuesXMLEnvelope3
	"self debug: #testDecodeDotNetSharedValuesXMLEnvelope3"
	| originalUseDotNetStyleSharedValues envelopeBuilder returnEnvelope message resp value outparams |

	[originalUseDotNetStyleSharedValues := SoapResponse useDotNetStyleSharedValues.
	SoapResponse useDotNetStyleSharedValues: true.
	envelopeBuilder := SoapEnvelopeBuilder new.
	returnEnvelope := envelopeBuilder buildSoapEnvelopeFromXmlString: self dotNetSharedValuesEnvelopeXML3.
	message := SoapMessage envelope: returnEnvelope.
	resp := SoapResponse fromSoapMessage: message.
	value := resp returnValue.
	self should: [value size = 10].
	self should: [value first = '632900993212352500'].
	self should: [value second = '632900993212508750'].

	outparams := resp outparameters.

	self should: [outparams size = 2].
	self should: [outparams first = 42].
	self should: [outparams second = #(1 2 3)].
	]
		ensure: [SoapResponse useDotNetStyleSharedValues: originalUseDotNetStyleSharedValues]