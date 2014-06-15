testing
testDecodeBoolean
	| dec ret |
	dec := SoapSqDecoder new.
	ret := dec decodeXmlElement: ((SoapVariable
					name: 'arg1'
					value: 'true'
					type: #Boolean) encoding: #soapSqEncoding;
					 asXmlElement).
	self
		should: [ret = true]