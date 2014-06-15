initialize-release
host: hostnameString port: portNumberInteger page: pageString 
	
	reqURI := HyURI new.
	reqURI
		hostname: hostnameString;
		portNumber: portNumberInteger;
		path: ((pageString isNil
					or: [pageString isEmpty])
				ifTrue: ['/']
				ifFalse: [pageString]);
		scheme: 'http'.