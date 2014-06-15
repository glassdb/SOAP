actions
isMustUnderstandEnabled
	self parent isNil
		ifTrue: [^ true].
	^ self parent hasHeader
		ifTrue: [self parent header isMustUnderstandEnabled]
		ifFalse: [true]