testing
testDecodeFloatArray
	
	| dec ret |
	dec := SoapDecoder new.
	ret := dec decodeXmlElement: (SoapVariable name: 'floatArr1' value: #(1.1 2.2 3.3)) asXmlElement.
	self should: [ ret = #(1.1 2.2 3.3)].