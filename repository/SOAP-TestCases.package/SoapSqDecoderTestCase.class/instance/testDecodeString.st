testing
testDecodeString
	| dec ret |
	dec := SoapSqDecoder new.
	ret := dec decodeXmlElement: ((SoapVariable
					name: 'arg1'
					value: 'Smalltalk'
					type: #String) encoding: #soapSqEncoding;
					 asXmlElement).
	self
		should: [ret = 'Smalltalk']