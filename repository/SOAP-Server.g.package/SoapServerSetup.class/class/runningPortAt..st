utility
runningPortAt: transportName 
	"SoapServerSetup runningPortAt: #http"
	| runnings setup |
	runnings := self subclasses
				select: [:each | each handler isRunning].
	setup := runnings
				detect: [:each | each transportName = transportName]
				ifNone: [].
	setup
		ifNil: [^ nil].
	^ setup handler port