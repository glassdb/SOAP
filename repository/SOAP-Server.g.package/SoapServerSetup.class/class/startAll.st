utility
startAll
	"SoapServerSetup startAll"
	self name == #SoapServerSetup
		ifTrue: [self subclassesDo: [:each | each start]]