private
autoPrefixTo: anXmlElement
	| autoPrefix |
	autoPrefix := SoXmlUtil randomPrefix.
	anXmlElement name: autoPrefix, ':', anXmlElement.
	^autoPrefix