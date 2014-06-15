actions
addSubElement: anXmlElement
	"anXmlElement mustUnderstand:
		#printXmlOn:aStream indent: anInteger
		#parent: anXmlElement"
	anXmlElement parent: self.
	^self subElements add: anXmlElement.