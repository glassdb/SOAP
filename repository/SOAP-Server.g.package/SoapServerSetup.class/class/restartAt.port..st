utility
restartAt: transportName port: portNumber 
	"SoapServerSetup restartAt: #http port: 8824"
	| setUp |
	setUp := SoapServerSetupMap at: transportName.
	setUp isNil
		ifFalse: [setUp startOn: portNumber]