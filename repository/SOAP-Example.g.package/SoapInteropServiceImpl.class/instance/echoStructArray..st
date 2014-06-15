actions
echoStructArray: aStructArray

	aStructArray class == Array 
		ifFalse: [ ^SoapError signal: 'Could not convert array' ].
	aStructArray do: [: aStruct |
		(aStruct isKindOf: SOAPStruct)
			ifFalse: [ ^SoapError signal: 'Could not convert value to string ', aStruct asString ]].
	^aStructArray