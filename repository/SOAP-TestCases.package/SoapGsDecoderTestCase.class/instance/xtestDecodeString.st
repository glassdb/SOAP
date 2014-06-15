testing
xtestDecodeString
	| dec ret |
	dec := SoapGsDecoder new.
	ret := dec decodeXmlElement: ((SoapVariable
					name: 'arg1'
					value: 'Smalltalk'
					type: #String) encoding: #soapSqEncoding;
					 asXmlElement).
	self
		should: [ret = 'Smalltalk']