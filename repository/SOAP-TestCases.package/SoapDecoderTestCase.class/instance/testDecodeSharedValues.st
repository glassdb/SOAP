testing
testDecodeSharedValues
	"self debug: #testDecodeSharedValues"
	| xml elem dec address book person |
	xml := SoapDecoderTestCase new sharedValuesXML.
	elem := SoapWrapElement fromXml: xml.
	dec := SoapDecoder new.
	elem := dec decodeXmlElement: elem.
	address := elem at: 'Address'.
	book := elem at: 'Book'.
	person := elem at: 'Person'.

	self should: [(book at: #'author') = person].
	self should: [(person at: #'address') = address].