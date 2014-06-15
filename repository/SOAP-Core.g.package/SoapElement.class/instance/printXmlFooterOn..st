private-printing
printXmlFooterOn: aStream 
	aStream nextPut: $<.
	aStream nextPut: $/.
	self writeName: self name on: aStream.
	aStream nextPut: $>