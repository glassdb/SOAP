testing
testArrayWithNamespace
	| elem1 |
	elem1 := ((SoapVariable name: 'arr' value: #(1 2 3) xsdType: 'ns1:myArrayType' namespace: 'http://my.com/nm') asXmlElement).
	self should:[(elem1 declaredNamespaceURIFor: 'ns1') = 'http://my.com/nm'].