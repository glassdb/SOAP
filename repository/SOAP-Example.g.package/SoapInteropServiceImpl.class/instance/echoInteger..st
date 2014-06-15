actions
echoInteger: anInteger

	(anInteger isKindOf: Integer)
		ifTrue: [ ^anInteger ].
	SoapError signal: 'Could not convert value to integer: ', anInteger asString