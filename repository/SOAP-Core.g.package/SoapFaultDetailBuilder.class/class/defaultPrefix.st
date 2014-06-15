accessing
defaultPrefix
	DefaultPrefix isNil
		ifTrue: [DefaultPrefix := 'e'].
	^ DefaultPrefix