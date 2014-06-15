actions
echoFloat: aFloat

	| call resp |
	call := self newCall.
	call methodName: 'echoFloat'.
	call
		addParameterNamed: #inputFloat value: aFloat.
	resp := call invoke.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [ | ret |
			ret := resp returnValue.
			(ret isKindOf: CharacterCollection)
				ifTrue: [ Float fromString: ret]
				ifFalse: [ ret ]]