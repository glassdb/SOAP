accessing
hostAddressCache
	HostAddressCache isNil ifTrue: [self initHostAddressCache].
	^HostAddressCache