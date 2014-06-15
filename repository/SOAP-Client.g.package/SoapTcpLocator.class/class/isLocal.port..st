colocation
isLocal: hostOrIp port: portNum 
	"Squeak specific"
	| setup |
	SoapConfigurationMap isServerInstalled
		ifFalse: [^ false].
	setup := self serverSetup.
	setup
		ifNil: [^ false].
	^ (setup runningPorts includes: portNum)
		and: [((hostOrIp = 'localhost'
						or: [hostOrIp = '127.0.0.1'])
					or: [hostOrIp = self localAddress])
				or: [hostOrIp = self localHost]]