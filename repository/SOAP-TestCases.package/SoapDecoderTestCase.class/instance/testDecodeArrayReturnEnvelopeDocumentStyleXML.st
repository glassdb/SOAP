testing
testDecodeArrayReturnEnvelopeDocumentStyleXML
	"self debug: #testDecodeArrayReturnEnvelopeDocumentStyleXML"
	
	| envelopeBuilder returnEnvelope message resp value dict1 dict2 |
	SoapDecoder arrayTypeDict at: 'DataVersionArrayElement' put: Array.
	envelopeBuilder := SoapEnvelopeBuilder new.
	returnEnvelope := envelopeBuilder buildSoapEnvelopeFromXmlString: self arrayReturnEnvelopeDocumentStyleXML.
	message := SoapMessage envelope: returnEnvelope.
	resp := SoapResponse fromSoapMessage: message.
	resp style: #document.
	value := resp returnValue.
	SoapDecoder arrayTypeDict removeKey: 'DataVersionArrayElement'.

	self should: [value size = 2].
	dict1 := value first.
	self should: [(dict1 at: 'build') = '379'].
	self should: [(dict1 at: 'country') = 'US'].
	

	dict2 := value second.
	self should: [(dict2 at: 'build') = '376'].
	self should: [(dict2 at: 'country') = 'CA'].