testing
testDecodeAnyArray
	
	| dec ret |
	dec := SoapDecoder new.
	ret := dec decodeXmlElement: (SoapVariable name: 'anyArr1' value: #(1 '2' 3.0)) asXmlElement.
	self should: [ ret = #(1 '2' 3.0)].