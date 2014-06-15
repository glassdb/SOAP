testing
testEncodeBoolean
	| enc ret |
	enc := SoapEncoder new.

	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: 'true' type: #Boolean).
	self should: [ (ret getAttributeNamed: 'xsi:type') = 'xsd:boolean'].
	self should: [ ret value = 'true'].