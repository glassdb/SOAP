actions
callTimeNow
	| call |
	call := (SoapCallEntry tcpHost: self hostAddress port: self port) newCall.
	call transport: self transport.
	call targetObjectURI: self targetObjectURI.
	call methodName: 'timeNow'.
	
	^call invokeAndReturn