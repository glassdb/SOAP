actions
echoStruct: aSOAPStruct

	| call resp |
	call := self newCall.
	call methodName: 'echoStruct'.
	call
		addParameterNamed: #inputStruct value: aSOAPStruct.
	resp := call invoke.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [resp returnValue]