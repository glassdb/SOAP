accessing
callEntry
	callEntry isNil ifTrue: [ callEntry := SoapCallEntry tcpHost: self host port: self port].
	^callEntry