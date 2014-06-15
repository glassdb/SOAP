testing
isRunning

	server == nil ifTrue: [ ^false ].
	^server isStarted