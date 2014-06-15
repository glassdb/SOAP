actions
callReturnComplexDictionary
	| call dict |
	call := (SoapCallEntry tcpHost: self hostAddress port: self port) newCall.
	call transport: self transport.
	call targetObjectURI: self targetObjectURI.
	call methodName: 'returnComplexDictionary'.
	dict := Dictionary new.
	dict at: #Java put: 'Forget it'.
	call addParameterNamed: #aDictionary value: dict.
	
	^call invokeAndReturn