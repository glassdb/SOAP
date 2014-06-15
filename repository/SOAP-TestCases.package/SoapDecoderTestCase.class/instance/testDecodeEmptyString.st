testing
testDecodeEmptyString
	
	| dec ret |
	dec := SoapDecoder new.
	ret := dec decodeXmlElement: (SoapVariable name: 'arg1' value: '' type: #String) asXmlElement.
	self should: [ ret = ''].