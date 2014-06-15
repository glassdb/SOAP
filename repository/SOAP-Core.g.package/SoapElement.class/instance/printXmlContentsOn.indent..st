private-printing
printXmlContentsOn: aStream indent: level 
	aStream cr.
	self privPrintChildrenOn: aStream indent: level + 1.
	level timesRepeat: [aStream space].