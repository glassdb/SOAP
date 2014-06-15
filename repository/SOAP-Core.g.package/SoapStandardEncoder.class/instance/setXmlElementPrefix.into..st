private
setXmlElementPrefix: aSoapVariable into: anXmlElement 
	| prefix |
	prefix := aSoapVariable prefix.
	prefix isEmptyOrNil
		ifFalse: [aSoapVariable isPrefixedName ifFalse: [anXmlElement name: prefix , ':' , anXmlElement name]].
	^ anXmlElement