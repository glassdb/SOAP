testing
xtestDecodeObject
	| dec ret dict |
	dec := SoapGsDecoder new.
	dict := Dictionary new.
	dict at: #Smalltalk put: #Cool.
	dict at: #Java put: #Plain.
	ret := dec decodeXmlElement: ((SoapVariable name: 'arg1' value: dict) encoding: #soapSqEncoding;
					 asXmlElement).
	self
		should: [ret = dict]