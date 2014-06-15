instance creation
tcpHost: hostnameString port: portNumberInteger
	"In many cases, these values are used for setting router server URI" 
	^ self new
		locator: (SoapTcpLocator host: hostnameString port: portNumberInteger)