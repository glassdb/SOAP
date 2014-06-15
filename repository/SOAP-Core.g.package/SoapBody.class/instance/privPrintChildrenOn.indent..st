private-printing
privPrintChildrenOn: aStream indent: level 
	fault isNil
		ifFalse: [self fault printXmlOn: aStream indent: level].
	bodyEntries isNil
		ifFalse: [self bodyEntries
				do: [:each | each printXmlOn: aStream indent: level]].
	super privPrintChildrenOn: aStream indent: level