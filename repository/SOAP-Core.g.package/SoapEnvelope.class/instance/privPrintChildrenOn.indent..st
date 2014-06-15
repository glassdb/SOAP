private-printing
privPrintChildrenOn: aStream indent: level
	self header isNil ifFalse:[self header printXmlOn: aStream indent: level].
	self body printXmlOn: aStream indent: level. "##body always exists##"
	super privPrintChildrenOn: aStream indent: level