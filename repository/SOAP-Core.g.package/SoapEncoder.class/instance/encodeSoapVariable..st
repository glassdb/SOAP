actions
encodeSoapVariable: aSoapVariable 
	| val type |
	aSoapVariable isRefValue ifTrue: [^ self encodeRefSoapVariable: aSoapVariable]. "legacy support"
	(self convertedAsRef: aSoapVariable) ifNotNilDo: [:var | ^ self encodeRefSoapVariable: var].
	val := aSoapVariable value.
	val isNil ifTrue: [^ self encodeNilSoapVariable: aSoapVariable].

	type := aSoapVariable type.
	type isNil ifTrue: [type := val class name].
	self customComplexTypeDict at: type ifPresent: [:p | ^ aSoapVariable value asXmlElement: aSoapVariable with: self].
	(self arrayTypeCandidateNames includes: type)
		ifTrue: [^ self encodeArraySoapVariable: aSoapVariable].
	(self dictionaryTypeCandidateNames includes: type)
		ifTrue: [^ self encodeDictionarySoapVariable: aSoapVariable].

	type == #SoapEncStruct ifTrue: [^ self encodeStructSoapVariable: aSoapVariable].
	self complexTypeDict at: type 
		ifPresent: [:p |  ^self encodeStructSoapVariable: 
					(aSoapVariable value: ((SoapEncStruct from: aSoapVariable value) xsdType: p))].

	^self encodePrimitive: aSoapVariable typed: type.