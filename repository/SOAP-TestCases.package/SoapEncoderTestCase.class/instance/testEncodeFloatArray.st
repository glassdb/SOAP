testing
testEncodeFloatArray
	| enc ret |
	enc := SoapEncoder new.

	ret := enc encodeSoapVariable: (SoapVariable name: 'floatArr' value: #(1.0 2.3 3.4)).
	self should: [ (ret getAttributeNamed: (SoapConstants soapEncPrefixColon, 'arrayType')) =  'xsd:double[3]'].
	self should: [ (ret children at: 1) value = '1.0000000000000000E+00'].
	self should: [ (ret children at: 3) value = '3.3999999999999999E+00'].
	
	ret := enc encodeSoapVariable: (SoapVariable name: 'floatArr' value: #(4.5 5.6) type: #Array).
	self should: [ (ret getAttributeNamed: (SoapConstants soapEncPrefixColon, 'arrayType')) =  'xsd:double[2]'].
	self should: [ (ret children at: 1) value = '4.5000000000000000E+00'].
	self should: [ (ret children at: 2) value = '5.5999999999999996E+00'].
	
	ret := enc encodeSoapVariable: (SoapVariable name: 'floatArr' value: #()).
	self should: [ (ret getAttributeNamed: (SoapConstants soapEncPrefixColon, 'arrayType')) =  'xsd:anyType[0]'].
	self should: [ ret children isEmpty].