accessing
typeDict
	typeDict isNil ifTrue: [self initTypeDict].
	^typeDict