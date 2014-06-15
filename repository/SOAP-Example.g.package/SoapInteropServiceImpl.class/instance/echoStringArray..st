actions
echoStringArray: aStringArray

	aStringArray class == Array 
		ifFalse: [ ^SoapError signal: 'Could not convert array' ].
	aStringArray do: [: aString |
		(aString isKindOf: String)
			ifFalse: [ ^SoapError signal: 'Could not convert value to string ', aString asString ]].
	^aStringArray