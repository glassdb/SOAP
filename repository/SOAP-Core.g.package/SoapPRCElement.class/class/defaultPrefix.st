accessing
defaultPrefix
	DefaultPrefix isNil
		ifTrue: [DefaultPrefix := 'm'].
	^ DefaultPrefix