private-init
initByDom: aParsedXmlElement 
	| prefixAndLocalName |
	self
		name: (SoXmlUtil elementNameFrom: aParsedXmlElement).
	prefixAndLocalName := SoXmlUtil prefixAndLocalNameFrom: self name.
	self prefixName: prefixAndLocalName first.
	self localName: prefixAndLocalName last.
	self
		initAttributesBy: (SoXmlUtil attribDictFrom: aParsedXmlElement).
	self
		value: (SoXmlUtil elementValueFrom: aParsedXmlElement).

	(SoXmlUtil elementsWithoutBlankTextsFrom: aParsedXmlElement)
		do: [:each | self initChildElementByDom: each]