actions
soapAction: aStringOrSoapAction 
	| soapAction |
	soapAction := aStringOrSoapAction isString
				ifTrue: [SoapAction intent: aStringOrSoapAction]
				ifFalse: [aStringOrSoapAction].
	self at: #soapAction put: soapAction