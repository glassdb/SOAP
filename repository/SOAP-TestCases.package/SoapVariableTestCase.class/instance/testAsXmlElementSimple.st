testing
testAsXmlElementSimple
	| inst elem |
	inst := SoapVariable name: 'foo' value: 1 type: #Integer.
	elem := inst asXmlElement.
	self should: [elem name = 'foo'].
	self should:[ elem parent = nil].
	self should:[ (elem getAttributeNamed: 'xsi:type') = 'xsd:integer']. 
	self should:[ (elem getAttributeNamed: 'env:encodingStyle') = SoapConstants soapEncURI].