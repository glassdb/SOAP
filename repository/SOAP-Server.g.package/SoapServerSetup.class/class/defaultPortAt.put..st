utility
defaultPortAt: transportName put: portNumber
	"SoapServerSetup defaultPortAt: #http put: 8824"
	| setUp |
	setUp := SoapServerSetupMap at: transportName.
	setUp isNil
		ifTrue: [SoapServerSetupMap initialize.
			setUp := SoapServerSetupMap at: #http].
	^ setUp defaultPort: portNumber