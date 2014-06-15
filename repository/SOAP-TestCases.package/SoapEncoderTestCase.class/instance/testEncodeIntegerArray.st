testing
testEncodeIntegerArray
	| enc ret |
	enc := SoapEncoder new.

	ret := enc encodeSoapVariable: (SoapVariable name: 'integerArr' value: #(1 2 3)).
	self should: [ (ret getAttributeNamed: (SoapConstants soapEncPrefixColon, 'arrayType')) =  'xsd:integer[3]'].
	self should: [ (ret children at: 1) value = '1'].
	self should: [ (ret children at: 3) value = '3'].
	
	ret := enc encodeSoapVariable: (SoapVariable name: 'integerArr' value: #(4 5) type: #Array).
	self should: [ (ret getAttributeNamed: (SoapConstants soapEncPrefixColon, 'arrayType')) =  'xsd:integer[2]'].
	self should: [ (ret children at: 1) value = '4'].
	self should: [ (ret children at: 2) value = '5'].
	
	ret := enc encodeSoapVariable: (SoapVariable name: 'integerArr' value: #()).
	self should: [ (ret getAttributeNamed: (SoapConstants soapEncPrefixColon, 'arrayType')) =  'xsd:anyType[0]'].
	self should: [ ret children isEmpty].