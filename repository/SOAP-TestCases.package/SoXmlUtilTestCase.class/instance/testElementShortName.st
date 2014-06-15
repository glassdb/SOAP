testing
testElementShortName
	
	| elem2 nm2 |
	elem2 := self namespacedSimpleXmlElement.
	nm2 := SoXmlUtil elementShortNameFrom: elem2.
	self should:[nm2 = 'Bar'].