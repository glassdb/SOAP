utility
stopAll
	"SoapServerSetup stopAll"
	self name == #SoapServerSetup
		ifTrue: [self subclassesDo: [:each | each stop]]