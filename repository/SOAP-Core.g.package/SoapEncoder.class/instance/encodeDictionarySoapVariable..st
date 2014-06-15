private-encoding
encodeDictionarySoapVariable: aSoapVariable 
	| elem |
	elem := super encodeDictionarySoapVariable: aSoapVariable.
	self remember: elem for: aSoapVariable.
	^elem