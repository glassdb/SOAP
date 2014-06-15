actions
echoStructArray: fa

	| call resp |
	call := self newCall.
	call methodName: 'echoStructArray'.
	call
		addParameterNamed: #inputStructArray value: fa.
	resp := call invoke.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [resp returnValue]