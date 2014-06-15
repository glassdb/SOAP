testing
testIsArrayType
	| elem1 elem2 |
	elem1 := ((SoapVariable name: 'arr' value: #(1 2 3) ) asXmlElement).
	self should:[elem1 isArrayType].
	
	elem2 := ((SoapVariable name: 'prim' value: 1 ) asXmlElement).
	self shouldnt:[elem2 isArrayType]