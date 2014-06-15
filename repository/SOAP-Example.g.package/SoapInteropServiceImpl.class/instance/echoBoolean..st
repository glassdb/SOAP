actions
echoBoolean: aBoolean

	aBoolean class == Boolean ifTrue: [ ^aBoolean ].
	SoapError signal: 'Could not convert value to boolean: ', aBoolean asString