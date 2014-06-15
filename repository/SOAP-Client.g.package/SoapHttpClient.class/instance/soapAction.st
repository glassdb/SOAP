accessing
soapAction
	soapAction isNil ifTrue: [soapAction := SoapAction noIntent].
	^soapAction