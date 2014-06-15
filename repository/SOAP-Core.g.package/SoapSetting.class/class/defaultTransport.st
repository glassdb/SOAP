transport setting
defaultTransport
	defaultTransport isNil ifTrue: [defaultTransport := #http].
	^defaultTransport