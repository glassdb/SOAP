testing
testDecodeOneSizeArrayReturnEnvelopeDocumentStyleXML
	"self debug: #testDecodeOneSizeArrayReturnEnvelopeDocumentStyleXML"
	
	| envelopeBuilder returnEnvelope message resp value dict1 |
	SoapDecoder arrayTypeDict at: 'DataVersionArrayElement' put: Array.
	envelopeBuilder := SoapEnvelopeBuilder new.
	returnEnvelope := envelopeBuilder buildSoapEnvelopeFromXmlString: self oneSizeArrayReturnEnvelopeDocumentStyleXML.
	message := SoapMessage envelope: returnEnvelope.
	resp := SoapResponse fromSoapMessage: message.
	resp style: #document.
	value := resp returnValue.
	SoapDecoder arrayTypeDict removeKey: 'DataVersionArrayElement'.

	self should: [value size = 1].
	dict1 := value first.
	self should: [(dict1 at: 'build') = '379'].
	self should: [(dict1 at: 'country') = 'US'].