actions
callBrowseClassDefinition: aString 
	| call |
	call := (SoapCallEntry tcpHost: self hostAddress port: self port) newCall.
	call transport: self transport.
	call targetObjectURI: self targetObjectURI.
	call methodName: 'browseClassDefinition'.
	call
		addParameterNamed: #className value: aString.
	^call invokeAndReturn asString