actions-invoking
invokeAndReturnWithValue: value
	 | resp |
	resp := self invokeWithValue: value.
	^resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [resp returnValue]