testing
testEncodingInteger
	| enc ret |
	enc := SoapNullEncoder new.

	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: 1).
	self should: [ (ret getAttributeNamed: 'xsi:type') = 'Null-ENC:SmallInteger'].
	self should: [ ret value = 1].
	
	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: (SmallInteger maxVal + 1) type: #Integer).
	self should: [ (ret getAttributeNamed: 'xsi:type') =  'Null-ENC:LargePositiveInteger'].
	self should: [ ret value = (SmallInteger maxVal + 1)].