testing
testDecodeComplexData
	
	| dec complexElem ret resultElements resultElement directoryCategory |
	"self debug: #testDecodeComplexData"
	dec := SoapDecoder new.
	complexElem := SoapWrapElement fromXml: self complexDataXML.
	ret := dec decodeXmlElement: complexElem.
	self should: [ ret isKindOf: Dictionary].
	self should: [ (ret at: #startIndex) = 1].
	self should: [ (ret at: #searchTime) = 0.194871].
	self should: [ (ret at: #searchQuery) = 'squeak'].
	resultElements := ret at: #resultElements.
	self should: [resultElements isKindOf: Array].
	self should: [resultElements size = 1].
	resultElement := resultElements first.
	self should: [resultElement isKindOf: Dictionary].
	self should: [(resultElement at: #URL) = 'http://www.squeak.org'].
	self should: [(resultElement at: #title) = 'Squeak home page'].
	directoryCategory := resultElement at: #directoryCategory.
	self should: [directoryCategory isKindOf: Dictionary].
	self should: [(directoryCategory at: #fullViewableName) = ''].