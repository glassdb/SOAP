actions
echoFloat: aNumber

	(aNumber isKindOf: Number)
		ifTrue: [ ^aNumber ].
	SoapError signal: 'Could not convert value to float ', aNumber asString