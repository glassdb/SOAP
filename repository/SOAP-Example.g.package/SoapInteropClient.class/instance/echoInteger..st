actions
echoInteger: anInteger

	| call resp |
	call := self newCall.
	call methodName: 'echoInteger'.
	call
		addParameterNamed: #inputInteger value: anInteger.
	resp := call invoke.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [ | ret |
			ret := resp returnValue.
			(ret isKindOf: CharacterCollection)
				ifTrue: [ Number readFrom: ret readStream]
				ifFalse: [ ret ]]