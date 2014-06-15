actions
echoFloatArray: aFloatArray

	aFloatArray class == Array 
		ifFalse: [ ^SoapError signal: 'Could not convert array' ].
	aFloatArray do: [: aFloat |
		(aFloat isKindOf: Number)
			ifFalse: [ ^SoapError signal: 'Could not convert value to float ', aFloat asString ]].
	^aFloatArray