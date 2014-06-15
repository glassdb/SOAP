instance creation
fromXmlElement: anXmlWrapElement 
	| inst faultcode faultstring faultactor detail others |
	inst := self named: anXmlWrapElement name.
	self addAttributesOf: anXmlWrapElement to: inst.
	faultcode := anXmlWrapElement findChildNamed: #'faultcode'.
	faultcode isNil	ifFalse: [inst faultcode: faultcode value].
	faultstring := anXmlWrapElement findChildNamed: #'faultstring'.
	faultstring isNil	ifFalse: [inst faultstring: faultstring value].
	faultactor := anXmlWrapElement findChildNamed: #'faultactor'.
	faultactor isNil	ifFalse: [inst faultactor: faultactor value].
	detail := anXmlWrapElement findChildNamed: #'detail'.
	detail isNil	ifFalse: [inst detail: (SoapFaultDetail fromXmlElement: detail)].
	others := anXmlWrapElement children
				reject: [:each | #('faultcode' 'faultstring' 'faultactor' 'detail') includes: each name].
	others	do: [:otherE | inst addSubElement: otherE].
	^ inst