actions
echoString: aString

	| call resp |
	call := self newCall.
	call methodName: 'echoString'.
	call
		addParameterNamed: #inputString value: aString.
	resp := call invoke.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [resp returnValue]