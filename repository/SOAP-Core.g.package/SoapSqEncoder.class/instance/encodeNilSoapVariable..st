private
encodeNilSoapVariable: aSoapVariable 
	| elem |
	elem := self xmlElementClass emptyNamed: aSoapVariable name.
	elem putAttributeNamed: SoapConstants xsiPrefixColon , 'null' value: 1.
	^elem