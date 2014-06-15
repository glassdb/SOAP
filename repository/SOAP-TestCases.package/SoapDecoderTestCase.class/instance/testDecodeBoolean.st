testing
testDecodeBoolean
	"self debug: #testDecodeBoolean"
	| dec ret |
	dec := SoapDecoder new.
	ret := dec decodeXmlElement: (SoapVariable name: 'arg1' value: 'true' type: #Boolean) asXmlElement.
	self should: [ ret = true].

	ret := dec decodeXmlElement: (SoapVariable name: 'arg1' value: '1' type: #Boolean) asXmlElement.
	self should: [ ret = true].

	ret := dec decodeXmlElement: (SoapVariable name: 'arg1' value: 'false' type: #Boolean) asXmlElement.
	self should: [ ret = false].

	ret := dec decodeXmlElement: (SoapVariable name: 'arg1' value: '0' type: #Boolean) asXmlElement.
	self should: [ ret = false].