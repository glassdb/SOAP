testing
testDecodeObject
	| dec ret dict |
	dec := SoapNullDecoder new.
	dict := Dictionary new.
	dict at: #Smalltalk put: #Cool.
	dict at: #Java put: #Plain.
	ret := dec decodeXmlElement: ((SoapVariable name: 'arg1' value: dict) encoding: #nullEncoding;
					 asXmlElement).
	self
		should: [ret = dict]