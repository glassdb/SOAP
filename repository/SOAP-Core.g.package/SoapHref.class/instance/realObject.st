accessing
realObject
	realObject
		ifNil: [realObject := self referenceDict
						at: self target
						ifAbsent: [^ self]].
	^ realObject