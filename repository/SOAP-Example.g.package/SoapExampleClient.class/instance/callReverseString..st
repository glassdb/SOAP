actions
callReverseString: aString
	| call |
	call := (SoapCallEntry tcpHost: self hostAddress port: self port) newCall.
	call transport: self transport.
	call targetObjectURI: self targetObjectURI.
	call methodName: 'reverseString'.
	call addParameterNamed: #aString value: aString.
	
	^call invokeAndReturn