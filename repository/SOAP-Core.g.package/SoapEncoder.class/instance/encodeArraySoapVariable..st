private-encoding
encodeArraySoapVariable: aSoapVariable 
	| elem |
	elem := super encodeArraySoapVariable: aSoapVariable.
	self remember: elem for: aSoapVariable.
	^elem