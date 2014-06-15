accessing
context
	context isNil ifTrue:[context := SoapContext new].
	^context