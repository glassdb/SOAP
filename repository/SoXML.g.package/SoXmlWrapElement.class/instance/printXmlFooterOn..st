printing
printXmlFooterOn: aStream 
	self isXmlPrintable ifFalse: [^ self].
	self isEmptyBody
		ifFalse: 
			[aStream nextPut: $<.
			aStream nextPut: $/.
			self writeName: self name on: aStream.
			aStream nextPut: $>].