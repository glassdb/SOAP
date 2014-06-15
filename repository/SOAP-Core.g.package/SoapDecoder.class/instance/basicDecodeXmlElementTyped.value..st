private
basicDecodeXmlElementTyped: itemType value: aSoapWrapElement 
	| value |
	aSoapWrapElement href ifNotNilDo: [:href | value := self referenceDict at: href ifAbsent:[].
		value ifNil: [^self referenceDict at: href put: (SoapHref on: href in: self referenceDict)].
		^value.
	].
	self class useXsiNullAttribute
		ifTrue: [value := self decodeNilXmlElement: aSoapWrapElement.
			value ifNil: [^ value]].
	(self isArrayType: aSoapWrapElement)
		ifTrue: [value := self decodeArrayXmlElement: aSoapWrapElement.
			self remember: value ifExistsId: aSoapWrapElement.
			^ value].
	value := aSoapWrapElement children isEmpty
				ifTrue: [self decodePrimitiveTyped: aSoapWrapElement xsiType value: aSoapWrapElement value]
				ifFalse: [self decodeComplexXmlElementTyped: itemType value: aSoapWrapElement].
	self remember: value ifExistsId: aSoapWrapElement.
	^ value