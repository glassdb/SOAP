private
decodePrimitiveTyped: xsiTypeName value: value 
	"quick hack - should see both prefix url and type"
	| xsiTypeShortName stClsName stClass val  |
	xsiTypeName isNil ifTrue:  [^value].
	xsiTypeShortName := SoXmlUtil localNameFrom: xsiTypeName.
	
	(xsiTypeShortName = SoapConstants boolean) 
		ifTrue: [
			value = '1' ifTrue: [ ^true].
			value = '0' ifTrue: [ ^false ].
			^Boolean fromString: value ].
	(xsiTypeShortName = SoapConstants string) ifTrue: [^value isNil ifTrue:[''] ifFalse:[value]].
	(xsiTypeShortName = SoapConstants time) ifTrue: [^value]. "quick hack"
	((xsiTypeShortName = SoapConstants base64Binary) or: [xsiTypeShortName = SoapConstants base64]) ifTrue:[^(Base64MimeConverter mimeDecodeToBytes: (value readStream)) contents ].
	
	stClsName := self typeDict at: (SoapConstants xsdPrefixColon, xsiTypeShortName) asSymbol ifAbsent:[ SoapDecodingError signal: xsiTypeName, '''s decoding is not supported by ', self class printString].
	stClass := self class environment at: stClsName.
	val := [stClass readFrom: (ReadStream on: value)] on: Error
		 do: [:ex | SoapDecodingError signal: ('Error in {1}>>readFrom: {2}' translated format: {stClass. ex description}). nil].
	^val