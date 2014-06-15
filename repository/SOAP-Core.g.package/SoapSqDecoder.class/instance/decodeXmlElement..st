actions
decodeXmlElement: aSoapWrapElement
	| xsiType stClsName stClass val |
	xsiType := aSoapWrapElement xsiType.
	(xsiType isNil or:[xsiType = (SoapConstants xsdPrefixColon, 'string')]) ifTrue: [^aSoapWrapElement value].
	xsiType = (SoapConstants sqEncPrefixColon, self defaultObjectDecoderClass name) ifTrue: [^self decodeObjectXmlElement: aSoapWrapElement].
	stClsName := self typeDict at: xsiType asSymbol ifAbsent:[ SoapDecodingError signal: xsiType, '''s decoding is not supported by ', self class printString].
	stClass := self class environment at: stClsName.
	val := stClass readFrom: (ReadStream on: aSoapWrapElement value).
	^val