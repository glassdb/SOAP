testing
testDecodeArrayWithEmptyString
	| dec arrayElem ret |
	dec := SoapDecoder new.
	arrayElem := SoapWrapElement fromXml: self arrayWithEmptyStringXML.
	ret := dec decodeXmlElement: arrayElem.
	self should: [(ret at: #anArray)
				isKindOf: Array].
	self should: [((ret at: #anArray)
				at: 2)
				= '']