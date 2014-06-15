actions
echoString: aString

	(aString isKindOf: String)
		ifTrue: [ ^aString ].
	SoapError signal: 'Could not convert value to string: ', aString asString