actions
addHeaderEntry: anXmlElement
	"anXmlElement mustUnderstand:
		#printXmlOn:aStream
		#parent: anXmlElement"
	anXmlElement parent: self.
	^self headerEntries add: anXmlElement.