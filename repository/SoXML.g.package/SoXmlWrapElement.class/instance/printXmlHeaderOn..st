printing
printXmlHeaderOn: aStream 
	self isXmlPrintable ifFalse: [^ self].
	self isEmptyBody
		ifTrue: 
			[aStream nextPut: $<.
			self writeName: self name on: aStream.
			self privPrintAttribsOn: aStream.
			aStream nextPut: $/.
			aStream nextPut: $>]
		ifFalse: 
			[aStream nextPut: $<.
			self writeName: self name on: aStream.
			self privPrintAttribsOn: aStream.
			aStream nextPut: $>.].