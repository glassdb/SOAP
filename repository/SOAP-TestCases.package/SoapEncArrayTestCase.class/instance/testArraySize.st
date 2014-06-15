testing
testArraySize
	| elem1 elem2 |
	elem1 := ((SoapVariable name: 'arr' value: #(1 nil 3) ) asXmlElement).
	self should:[elem1 size = 3].
	
	elem2 := ((SoapVariable name: 'arr' value: #() ) asXmlElement).
	self should:[elem2 size = 0].