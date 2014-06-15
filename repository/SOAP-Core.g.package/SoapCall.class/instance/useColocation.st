accessing
useColocation
	useColocation isNil ifTrue: [ useColocation := false].
	^useColocation