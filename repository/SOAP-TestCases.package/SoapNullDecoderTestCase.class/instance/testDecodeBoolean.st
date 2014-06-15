testing
testDecodeBoolean
	| dec ret |
	dec := SoapNullDecoder new.
	ret := dec decodeXmlElement: ((SoapVariable
					name: 'arg1'
					value: true) encoding: #nullEncoding;
					 asXmlElement).
	self
		should: [ret = true]