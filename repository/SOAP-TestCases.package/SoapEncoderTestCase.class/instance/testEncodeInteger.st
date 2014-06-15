testing
testEncodeInteger
	| enc ret |
	enc := SoapEncoder new.

	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: 1).
	self should: [ (ret getAttributeNamed: 'xsi:type') = 'xsd:integer'].
	self should: [ ret value = '1'].
	
	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: 10000000000 type: #Integer).
	self should: [ (ret getAttributeNamed: 'xsi:type') = 'xsd:integer'].
	self should: [ ret value = '10000000000'].