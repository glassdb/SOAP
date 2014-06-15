actions
assuredId
	id isNil ifTrue: [id := self generateId].
	^id