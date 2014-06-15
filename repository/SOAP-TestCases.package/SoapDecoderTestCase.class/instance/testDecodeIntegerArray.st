testing
testDecodeIntegerArray
	
	| dec ret |
	dec := SoapDecoder new.
	ret := dec decodeXmlElement: (SoapVariable name: 'intArr1' value: #(1 2 3) type: #Array) asXmlElement.
	self should: [ ret = #(1 2 3)].