testing
testIntent
	
	| act |
	act := SoapAction intent: 'urn:targetObjectURI:fooBar'.
	self should: [act printString =  ('SOAPAction: ', '"urn:targetObjectURI:fooBar"',(String with: Character cr with: Character lf))].