utility
runningTransportDescriptions
	"SoapServerSetup runningTransportDescriptions"
	^ self subclasses
		select: [:each | each handler isRunning] thenCollect:[:each | (each transportName, ':', each handler port printString) asSymbol]