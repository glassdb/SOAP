actions
echoStruct: aStruct

	(aStruct isKindOf: SOAPStruct)
		ifTrue: [ ^aStruct ].
	SoapError signal: 'Could not convert value to Struct ', aStruct asString