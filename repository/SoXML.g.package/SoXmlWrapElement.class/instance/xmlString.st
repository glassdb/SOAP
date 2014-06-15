printing
xmlString
	| wStr |
	wStr := WriteStream on: (String new: 64).
	self printXmlOn: wStr.
	^wStr contents