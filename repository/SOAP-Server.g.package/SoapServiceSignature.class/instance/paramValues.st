accessing
paramValues
	paramValues isNil ifTrue: [paramValues := IdentityDictionary new].
	^paramValues