private
encodeObjectSoapVariable: aSoapVariable
	| val  valStr elem |
	val := aSoapVariable value.
	valStr := self stringFromObject: val.
	elem := self xmlElementClass named: aSoapVariable name.
	elem putAttributeNamed: (SoapConstants xsiType) value: (SoapConstants sqEncPrefixColon, self defaultObjectEncoderClass name).
	elem value: valStr.
	^elem