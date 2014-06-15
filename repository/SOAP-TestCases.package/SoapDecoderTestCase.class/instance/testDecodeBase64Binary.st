testing
testDecodeBase64Binary
	
	| dec ret bytes |
	dec := SoapDecoder new.
	bytes := ByteArray with: 1 with: 2 with: 3 with: 4.
	ret := dec decodeXmlElement: (SoapVariable name: 'binbin' value: bytes type: #ByteArray) asXmlElement.
	self should: [ ret = bytes].