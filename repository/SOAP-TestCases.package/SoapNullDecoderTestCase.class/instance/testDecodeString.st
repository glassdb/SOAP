testing
testDecodeString
	| dec ret |
	dec := SoapNullDecoder new.
	ret := dec decodeXmlElement: ((SoapVariable
					name: 'arg1'
					value: 'Smalltalk') encoding: #nullEncoding;
					 asXmlElement).
	self
		should: [ret = 'Smalltalk']