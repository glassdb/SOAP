testing
testDecodeInteger
	
	| dec ret |
	dec := SoapDecoder new.
	ret := dec decodeXmlElement: (SoapVariable name: 'arg1' value: '1234567' type: #Integer) asXmlElement.
	self should: [ ret = 1234567].