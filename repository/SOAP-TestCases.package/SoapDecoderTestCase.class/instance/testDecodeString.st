testing
testDecodeString
	
	| dec ret |
	dec := SoapDecoder new.
	ret := dec decodeXmlElement: (SoapVariable name: 'arg1' value: 'Smalltalk' type: #String) asXmlElement.
	self should: [ ret = 'Smalltalk'].