testing
testEncodingObject
	
	| enc obj ret |
	enc := SoapNullEncoder new.
	obj := #(1 2 #(#hello 'Smalltalk') 3).
	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: obj).
	self should: [ ret name = 'auau'].
	self should: [ (ret getAttributeNamed: 'xsi:type') =  'Null-ENC:Array'].
	self should: [ ret value = obj].