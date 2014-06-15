private
basicDecodeXmlElementTyped: itemType value: aSoapWrapElement 
	| value |
	(self isArrayType: aSoapWrapElement)
		ifTrue: [value := self decodeArrayXmlElement: aSoapWrapElement.
			^ value].
	value := aSoapWrapElement children isEmpty
				ifTrue: [self decodePrimitiveTyped: (self keyFor: aSoapWrapElement) value: aSoapWrapElement value]
				ifFalse: [self decodeComplexXmlElementTyped: itemType value: aSoapWrapElement].
	^ value