testing
testIntentByRequestURI
	
	| act |
	act := SoapAction intentByRequestURI.
	self should: [act printString =  ('SOAPAction: ', '""',(String with: Character cr with: Character lf))].