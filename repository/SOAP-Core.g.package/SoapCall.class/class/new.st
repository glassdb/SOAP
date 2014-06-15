instance creation
new
	"default locator is SoapTcpLocator for localhost"
	^ self
		locator: (SoapTcpLocator host: 'localhost' port: 8823)