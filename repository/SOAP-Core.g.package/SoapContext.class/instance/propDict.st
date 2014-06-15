accessing
propDict
	propDict isNil ifTrue: [propDict := IdentityDictionary new].
	^propDict