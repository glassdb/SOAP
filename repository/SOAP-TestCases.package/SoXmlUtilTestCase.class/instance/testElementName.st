testing
testElementName
	| elem nm |
	elem :=self simpleXmlElement.
	nm := SoXmlUtil elementNameFrom: elem.
	self should:[nm = #'Foo'].