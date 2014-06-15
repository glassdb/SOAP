testing
testDecodeStringArray
	
	| dec ret |
	dec := SoapDecoder new.
	ret := dec decodeXmlElement: (SoapVariable name: 'stringArr1' value: #('a' 'b' '<c>') type: #Array) asXmlElement.
	self should: [ ret = #('a' 'b' '<c>')].