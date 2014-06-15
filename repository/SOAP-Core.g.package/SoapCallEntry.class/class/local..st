instance creation
local: portNumberInteger
	^ self new
		locator: (SoapTcpLocator host: 'localhost' port: portNumberInteger)