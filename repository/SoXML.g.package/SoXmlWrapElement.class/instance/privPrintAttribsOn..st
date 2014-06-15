private
privPrintAttribsOn: aStream
	attributesHolder isNil ifTrue:[^self]. "ugly - but for performance"
	self attributesHolder printXmlOn: aStream