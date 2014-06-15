accessing
implDict
	implDict isNil ifTrue: [implDict :=  IdentityDictionary new].
	^implDict