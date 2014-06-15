private-printing
printXmlHeaderOn: aStream 
	aStream nextPut: $<.
	self writeName: self name on: aStream.
	self privPrintAttribsOn: aStream.
	aStream nextPut: $>