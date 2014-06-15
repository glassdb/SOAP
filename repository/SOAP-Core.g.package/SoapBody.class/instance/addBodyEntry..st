actions
addBodyEntry: anXmlElement
	"anXmlElement mustUnderstand:
		#printXmlOn:aStream
		#parent: anXmlElement"
	anXmlElement parent: self.
	^self bodyEntries add: anXmlElement.