private-printing
privPrintChildrenOn: aStream indent: level
	self writeValue: self faultcode on: aStream betweenTag: 'faultcode'.
	self writeValue: self faultstring on: aStream betweenTag: 'faultstring'.
	self faultactor isNil ifFalse:[self writeValue: self faultactor on: aStream betweenTag: 'faultactor'].
	self detail isNil ifFalse:[self detail printXmlOn: aStream].
	super privPrintChildrenOn: aStream indent: level