testing
testDecodeMultiReturnEnvelopeDocumentStyleXML
	"self debug: #testDecodeMultiReturnEnvelopeDocumentStyleXML"
	
	| envelopeBuilder returnEnvelope message resp value dict1 dict2 |
	envelopeBuilder := SoapEnvelopeBuilder new.
	returnEnvelope := envelopeBuilder buildSoapEnvelopeFromXmlString: self multiReturnEnvelopeDocumentStyleXML.
	message := SoapMessage envelope: returnEnvelope.
	resp := SoapResponse fromSoapMessage: message.
	resp style: #document.
	value := resp returnValue.

	self should: [value size = 2].
	dict1 := value first.
	self should: [(dict1 at: #'id') = '5'].
	self should: [(dict1 at: #'number') = '65413'].
	self should: [(dict1 at: #'address1') = 'Brno-Chrlice'].
	self should: [(dict1 at: #'address2') = 'Brno-msto'].

	dict2 := value second.
	self should: [(dict2 at: #'id') = '1'].
	self should: [(dict2 at: #'number') = '65384'].
	self should: [(dict2 at: #'address1') = 'Liberec'].
	self should: [(dict2 at: #'address2') = 'Chrastava'].