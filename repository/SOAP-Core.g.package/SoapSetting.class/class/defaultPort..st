server setting
defaultPort: anInteger 
	SoapServerSetup defaultPortAt: self defaultTransport put: anInteger.
	"Should I restart here?"
	self restart