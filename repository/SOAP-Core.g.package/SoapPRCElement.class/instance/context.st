accessing
context
	context isNil ifTrue: [context := self buildContext].
	^context