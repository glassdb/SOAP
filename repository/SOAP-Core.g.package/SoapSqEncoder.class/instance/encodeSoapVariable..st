actions
encodeSoapVariable: aSoapVariable
	| val type xsiTypeAttVal elem |
	val := aSoapVariable value.
	val isNil ifTrue:[^self encodeNilSoapVariable: aSoapVariable ].
	type := aSoapVariable type.
	type isNil ifTrue:[type := val class name].
	xsiTypeAttVal := self typeDict at: type ifAbsent:[ ^self encodeObjectSoapVariable: aSoapVariable].
	elem := self xmlElementClass named: aSoapVariable name.
	elem putAttributeNamed: (SoapConstants xsiType) value: xsiTypeAttVal.
	elem value: aSoapVariable value.
	^elem