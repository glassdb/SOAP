testing
testElemPrint1
	| fixString wStr xmlElem  |
	fixString := '<Foo>bar</Foo>
'.
	wStr := WriteStream on: (String new: 16).
	xmlElem := SoXmlWrapElement new.
	xmlElem name: 'Foo'.
	xmlElem value: 'bar'.
	xmlElem printXmlOn: wStr.
	self should: [wStr contents = fixString]