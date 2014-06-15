private
decodeArrayXmlElement: aSoapWrapElement 
	| sz arrayClass array |
	sz := aSoapWrapElement size.
	arrayClass := self arrayTypeDict at: (self keyFor: aSoapWrapElement) ifAbsent:[Array].
	array :=  arrayClass new: sz.
	1 to: aSoapWrapElement children size
		do: [:idx | 
			| itemElem | 
			itemElem := aSoapWrapElement children at: idx ifAbsent: [].
			itemElem isNil
				ifFalse: [| itemType decodedItemValue | 
					itemType := aSoapWrapElement arrayItemType.
					decodedItemValue := (((itemType = SoapConstants xsdAnyType
										or: [self isArrayType: itemElem]) or: [itemElem href notNil ])
									or: [itemElem children isEmpty not])
								ifTrue: [self basicDecodeXmlElementTyped: itemType value: itemElem]
								ifFalse: [self decodePrimitiveTyped: itemType value: itemElem value].
					array at: idx put: decodedItemValue]].
	^ array