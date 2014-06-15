actions
echoVoid

	| call resp |
	call := self newCall.
	call methodName: 'echoVoid'.
	resp := call invoke.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [resp returnValue]