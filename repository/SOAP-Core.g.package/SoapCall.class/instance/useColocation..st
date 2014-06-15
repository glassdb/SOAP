accessing
useColocation: aBoolean
	aBoolean ifTrue: [self connector: nil].
	useColocation := aBoolean