accessing
handlerDict
	handlerDict isNil ifTrue: [handlerDict := IdentityDictionary new].
	^handlerDict