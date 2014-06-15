actions
callReverseArray: arrayOfSimpleType
	| call |
	call := (SoapCallEntry tcpHost: self hostAddress port: self port) newCall.
	call transport: self transport.
	call targetObjectURI: self targetObjectURI.
	call methodName: 'reverseArray'.
	call addParameterNamed: #anArray value: arrayOfSimpleType.
	
	^call invokeAndReturn