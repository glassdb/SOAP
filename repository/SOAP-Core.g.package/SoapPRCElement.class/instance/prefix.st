accessing
prefix
	prefix isNil ifTrue: [prefix := self class defaultPrefix].
	^prefix