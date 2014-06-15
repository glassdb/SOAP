testing
xtestEncodingString
	| enc ret |
	enc := SoapGsEncoder new.

	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: 'smalltalk').
	self should: [ (ret getAttributeNamed: 'xsi:type') = 'xsd:string'].
	self should: [ ret value = 'smalltalk'].
	
	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: 'ruby' type: #String).
	self should: [ (ret getAttributeNamed: 'xsi:type') = 'xsd:string'].
	self should: [ ret value = 'ruby'].