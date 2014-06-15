actions
echoIntegerArray: ia

	| call resp |
	call := self newCall.
	call methodName: 'echoIntegerArray'.
	call
		addParameterNamed: #inputIntegerArray value: ia.
	resp := call invoke.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [resp returnValue]