testing
testNoIntent
	
	| act |
	act := SoapAction noIntent.
	self should: [act printString = ('SOAPAction: ', (String with: Character cr with: Character lf)) ].