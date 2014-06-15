accessing
constDict
	constDict isNil
		ifTrue: [constDict := (super canUnderstand: #constDict)
						ifTrue: [super constDict copy]
						ifFalse: [IdentityDictionary new]].
	^ constDict