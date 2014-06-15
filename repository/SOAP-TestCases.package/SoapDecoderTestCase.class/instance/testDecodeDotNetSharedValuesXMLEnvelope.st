testing
testDecodeDotNetSharedValuesXMLEnvelope
	"self debug: #testDecodeDotNetSharedValuesXMLEnvelope"
	| originalUseDotNetStyleSharedValues envelopeBuilder returnEnvelope message resp value |
	[originalUseDotNetStyleSharedValues := SoapResponse useDotNetStyleSharedValues.
	SoapResponse useDotNetStyleSharedValues: true.
	envelopeBuilder := SoapEnvelopeBuilder new.
	returnEnvelope := envelopeBuilder buildSoapEnvelopeFromXmlString: self dotNetSharedValuesEnvelopeXML.
	message := SoapMessage envelope: returnEnvelope.
	resp := SoapResponse fromSoapMessage: message.
	value := resp returnValue.
	self
		should: [value = #(22039 22933 23177 23249 23393 nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil )]]
		ensure: [SoapResponse useDotNetStyleSharedValues: originalUseDotNetStyleSharedValues]