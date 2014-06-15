instance creation
fromXmlElement: anXmlWrapElement 
	| inst faultElem |
	inst := self named: anXmlWrapElement name.
	self addAttributesOf: anXmlWrapElement to: inst.
	faultElem := anXmlWrapElement findChildLocalNamed: SoapFault localName.
	faultElem isNil
		ifTrue: [anXmlWrapElement children
				do: [:each | inst addBodyEntry: each]]
		ifFalse: [inst
				fault: (SoapFault fromXmlElement: faultElem)].
	^ inst