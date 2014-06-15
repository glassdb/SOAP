private-encoding
encodeStructSoapVariable: aSoapVariable 
	| elem |
	elem := super encodeStructSoapVariable: aSoapVariable .
	self remember: elem for: aSoapVariable.
	^elem