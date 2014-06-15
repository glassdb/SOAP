private
setXmlElementHref: aSoapVariable into: anXmlElement 
	| href |
	href := aSoapVariable href.
	href isNil
		ifFalse: [anXmlElement href: href.
			anXmlElement beEmpty].
	^ anXmlElement