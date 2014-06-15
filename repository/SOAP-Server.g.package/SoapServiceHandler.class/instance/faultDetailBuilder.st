accessing
faultDetailBuilder
	faultDetailBuilder isNil ifTrue:[faultDetailBuilder := SoapFaultDetailBuilder new].
	^faultDetailBuilder