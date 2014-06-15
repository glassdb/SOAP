actions
outparameters
	self isFault ifTrue: [^ nil].
	outparameters isNil
		ifTrue: [outparameters := self buildOutparameters.
			self class useDotNetStyleSharedValues
				ifTrue: [self buildAdditionalResults]].
	^ outparameters