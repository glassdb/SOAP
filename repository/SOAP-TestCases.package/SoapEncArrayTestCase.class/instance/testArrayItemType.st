testing
testArrayItemType
	| elem1 elem2 |
	elem1 := ((SoapVariable name: 'arr' value: #(1 2 3) ) asXmlElement).
	self should:[elem1 arrayItemType = (SoapConstants xsdPrefixColon, 'integer')].
	
	elem2 := ((SoapVariable name: 'arr' value: #(1 'two' 3) ) asXmlElement).
	self should:[elem2 arrayItemType = (SoapConstants xsdPrefixColon, 'anyType')].