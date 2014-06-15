actions-hooks
getResponse

	| request response |
	request := HTTPRequest 
				readFrom: (HyOctetReadStream onByteArray: headerString asByteArray).
	[ response := (HyHTTPClient forRequest: request) response ] 
		on: SpSocketError 
		do: [:ex |
			SoapCannotConnectToServer signal: 'Server does not respond - ''host: ' , self host , ' port: ' , self port printString ].
	response isRedirectLink
		ifTrue: [ self error: 'not handling redirects, yet' ].
	^response messageBody entityBody asString