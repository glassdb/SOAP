private-init
initChildElementByDom: aParsedXmlElement 
	| parentElem childElmClass child |
	(SoXmlUtil isTextElement: aParsedXmlElement)
		ifTrue: [^ self
				value: (SoXmlUtil elementValueFrom: aParsedXmlElement)].
	parentElem := SoXmlUtil elementNameFrom: aParsedXmlElement.
	childElmClass := self privElementClassFrom: parentElem.
	child := childElmClass fromXmlElement: aParsedXmlElement.
	self addChild: child