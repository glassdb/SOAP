actions
returnValue
	self isFault ifTrue: [^ nil].
	returnValue isNil
		ifTrue: [returnValue := self buildReturnValue.
			self class useDotNetStyleSharedValues
				ifTrue: [self buildAdditionalResults]].
	^ returnValue