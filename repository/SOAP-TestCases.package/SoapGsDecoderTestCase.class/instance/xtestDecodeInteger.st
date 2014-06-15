testing
xtestDecodeInteger
	| dec ret |
	dec := SoapGsDecoder new.
	ret := dec decodeXmlElement: ((SoapVariable
					name: 'arg1'
					value: '1234567'
					type: #Integer) encoding: #soapSqEncoding;
					 asXmlElement).
	self
		should: [ret = 1234567]