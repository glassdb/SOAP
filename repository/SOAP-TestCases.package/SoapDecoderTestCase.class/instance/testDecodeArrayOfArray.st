testing
testDecodeArrayOfArray
	| dec arrayElem ret |
	dec := SoapDecoder new.
	arrayElem := SoapWrapElement fromXml: self arrayOfArrayXML.
	ret := dec decodeXmlElement: arrayElem.
	self should: [(ret at: 'Array')
				isKindOf: Array].
	self should: [((ret at: 'Array')
				at: 1)
				= #()].
	self should: [((ret at: 'Array')
				at: 2)
				= #(17974494715439249409 'aV34fTn/QoILMlilPla2Pw==' '20030913T14:26:28 +200')]