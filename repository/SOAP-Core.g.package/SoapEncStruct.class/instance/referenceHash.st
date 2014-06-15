accessing
referenceHash
	referenceHash ifNil: [referenceHash := self identityHash].
	^referenceHash