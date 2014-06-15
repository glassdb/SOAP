private
setXmlElementValue: aSoapVariable into: anXmlElement 
	| type value |
	super setXmlElementValue: aSoapVariable into: anXmlElement. 

	"otherwise"
	type := anXmlElement xsiType.
	value := anXmlElement value.
	type = SoapConstants xsdBase64BinaryType
		ifTrue: [| encValue | 
			encValue := (Base64MimeConverter mimeEncode: value asByteArray readStream) contents copyWithout: Character lf.
			^ anXmlElement value: encValue].
	(type = SoapConstants xsdFloatType and: [ value isString ])
		ifTrue: [ 
			('*NaN' match: value)
				ifTrue: [ ^ anXmlElement value: 'NaN' ].
			value = 'PlusInfinity' 
				ifTrue: [ ^ anXmlElement value: 'INF' ].
			value = 'MinusInfinity' 
				ifTrue: [ ^ anXmlElement value: '-INF' ]].