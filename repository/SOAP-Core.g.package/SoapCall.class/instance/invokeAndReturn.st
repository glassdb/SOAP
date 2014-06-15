actions-invoking
invokeAndReturn
	| resp |
	resp := self invoke.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [resp returnValue]