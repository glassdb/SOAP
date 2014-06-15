testing
testDecodeSingleReturnEnvelopeDocumentStyleXML
	"self debug: #testDecodeSingleReturnEnvelopeDocumentStyleXML"
	
	| envelopeBuilder returnEnvelope message resp value |
	envelopeBuilder := SoapEnvelopeBuilder new.
	returnEnvelope := envelopeBuilder buildSoapEnvelopeFromXmlString: self singleReturnEnvelopeDocumentStyleXML.
	message := SoapMessage envelope: returnEnvelope.
	resp := SoapResponse fromSoapMessage: message.
	resp style: #document.
	value := resp returnValue.

	self should: [value = 'bareString'].