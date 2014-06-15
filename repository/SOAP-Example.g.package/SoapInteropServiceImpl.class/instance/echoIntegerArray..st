actions
echoIntegerArray: anIntegerArray

	anIntegerArray class == Array 
		ifFalse: [ ^SoapError signal: 'Could not convert array' ].
	anIntegerArray do: [: anInteger |
		(anInteger isKindOf: Integer)
			ifFalse: [ ^SoapError signal: 'Could not convert value to integer: ', anInteger asString ]].
	^anIntegerArray