utility
runningPorts
	"SoapServerSetup runningPorts"
	^ self subclasses
		select: [:each | each handler isRunning] thenCollect:[:each |  each handler port]