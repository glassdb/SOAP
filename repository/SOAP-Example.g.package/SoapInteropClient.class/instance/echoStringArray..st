actions
echoStringArray: fa

	| call resp |
	call := self newCall.
	call methodName: 'echoStringArray'.
	call
		addParameterNamed: #inputStringArray value: fa.
	resp := call invoke.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [resp returnValue]