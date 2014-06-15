accessing
port
	port isNil ifTrue: [port := 80].
	^port