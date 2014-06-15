testing
testEncodingString
	| enc ret |
	enc := SoapSqEncoder new.

	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: 'smalltalk').
	self should: [ (ret getAttributeNamed: 'xsi:type') = 'xsd:string'].
	self should: [ ret value = 'smalltalk'].
	
	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: 'ruby' type: #String).
	self should: [ (ret getAttributeNamed: 'xsi:type') = 'xsd:string'].
	self should: [ ret value = 'ruby'].