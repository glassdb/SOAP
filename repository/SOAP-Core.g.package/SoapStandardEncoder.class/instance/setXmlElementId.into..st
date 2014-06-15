private
setXmlElementId: aSoapVariable into: anXmlElement 
	| id |
	id := aSoapVariable id.
	id isNil
		ifFalse: [anXmlElement id: id].
	^ anXmlElement