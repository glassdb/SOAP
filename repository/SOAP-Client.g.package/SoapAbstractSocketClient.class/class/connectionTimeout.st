setting
connectionTimeout
	connectionTimeout isNil ifTrue: [connectionTimeout := 30].
	^connectionTimeout