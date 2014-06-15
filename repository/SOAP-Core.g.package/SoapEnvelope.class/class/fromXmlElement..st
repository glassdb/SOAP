instance creation
fromXmlElement: anXmlWrapElement 
	| inst headElem bodyElem others |
	inst := self named: anXmlWrapElement name.
	self addAttributesOf: anXmlWrapElement to: inst.
	headElem := anXmlWrapElement findChildLocalNamed: SoapHeader localName.
	headElem isNil
		ifFalse: [inst
				header: (SoapHeader fromXmlElement: headElem)].
	bodyElem := anXmlWrapElement findChildLocalNamed: SoapBody localName.
	bodyElem isNil
		ifFalse: [inst
				body: (SoapBody fromXmlElement: bodyElem)].
	others := anXmlWrapElement children
				reject: [:each | each localName = SoapHeader localName
						or: [each localName = SoapBody localName]]. "will be obsolete in SOAP 1.2"
	others
		do: [:otherE | inst addSubElement: otherE].
	^ inst