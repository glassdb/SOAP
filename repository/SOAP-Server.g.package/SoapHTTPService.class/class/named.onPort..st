instance creation
named: aServiceName onPort: aPort

	| server |
	server := (HTTPServer new)
		acceptInForeground: false;
		hostName: 'localhost';
		portNumber: aPort;
		yourself.
	^self new server: server