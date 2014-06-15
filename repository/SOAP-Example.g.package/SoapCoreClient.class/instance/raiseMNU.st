actions
raiseMNU

	| call resp |
	call := self newCall.
	call methodName: 'raiseMNU'.
	resp := call invoke.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [resp returnValue]