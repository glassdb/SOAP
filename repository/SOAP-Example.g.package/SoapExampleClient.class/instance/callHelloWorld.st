actions
callHelloWorld	
	| call |
	call := (SoapCallEntry tcpHost: self hostAddress port: self port) newCall.
	call transport: self transport.
	call targetObjectURI: self targetObjectURI.
	call methodName: 'helloWorld'.
	
	^call invokeAndReturn