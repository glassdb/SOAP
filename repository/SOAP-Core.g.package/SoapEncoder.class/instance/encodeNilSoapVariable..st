private-encoding
encodeNilSoapVariable: aSoapVariable 
	| elem |
	^self class useXsiNullAttribute
		ifTrue: [elem := self xmlElementClass emptyNamed: aSoapVariable name.
			elem putAttributeNamed: SoapConstants xsiNil value: 1.
			elem]
		ifFalse: [nil]