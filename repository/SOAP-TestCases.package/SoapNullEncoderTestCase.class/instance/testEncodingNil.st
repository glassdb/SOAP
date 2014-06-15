testing
testEncodingNil
	| enc ret |
	enc := SoapNullEncoder new.
	
	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: nil).
	self should: [ ret name = 'auau'].
	self should: [ (ret getAttributeNamed: 'xsi:type') = 'Null-ENC:UndefinedObject'].
	self should: [ ret value isNil].