actions
echoFloatArray: fa

	| call resp |
	call := self newCall.
	call methodName: 'echoFloatArray'.
	call
		addParameterNamed: #inputFloatArray value: fa.
	resp := call invoke.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [resp returnValue]