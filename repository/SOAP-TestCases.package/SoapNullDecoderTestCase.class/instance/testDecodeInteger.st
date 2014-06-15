testing
testDecodeInteger
	| dec ret |
	dec := SoapNullDecoder new.
	ret := dec decodeXmlElement: ((SoapVariable
					name: 'arg1'
					value: 1234567) encoding: #nullEncoding;
					 asXmlElement).
	self
		should: [ret = 1234567]