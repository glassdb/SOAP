actions
echoBoolean: aBoolean

	| call resp |
	call := self newCall.
	call methodName: 'echoBoolean'.
	call
		addParameterNamed: #inputBoolean value: aBoolean.
	resp := call invoke.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [ | ret |
			ret := resp returnValue.
			(ret isKindOf: CharacterCollection)
				ifTrue: [ Boolean fromString: ret]
				ifFalse: [ ret ]]