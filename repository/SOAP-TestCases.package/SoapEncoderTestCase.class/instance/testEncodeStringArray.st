testing
testEncodeStringArray
	| enc ret |
	enc := SoapEncoder new.

	ret := enc encodeSoapVariable: (SoapVariable name: 'stringArr' value: #('a' 'b' 'c')).
	self should: [ (ret getAttributeNamed: (SoapConstants soapEncPrefixColon, 'arrayType')) =  'xsd:string[3]'].
	self should: [ (ret children at: 1) value = 'a'].
	self should: [ (ret children at: 3) value = 'c'].
	
	ret := enc encodeSoapVariable: (SoapVariable name: 'stringArr' value: #('' 'eee') type: #Array).
	self should: [ (ret getAttributeNamed: (SoapConstants soapEncPrefixColon, 'arrayType')) =  'xsd:string[2]'].
	self should: [ (ret children at: 1) value = ''].
	self should: [ (ret children at: 2) value = 'eee'].
	
	ret := enc encodeSoapVariable: (SoapVariable name: 'stringArr' value: #()).
	self should: [ (ret getAttributeNamed: (SoapConstants soapEncPrefixColon, 'arrayType')) =  'xsd:anyType[0]'].
	self should: [ ret children isEmpty].