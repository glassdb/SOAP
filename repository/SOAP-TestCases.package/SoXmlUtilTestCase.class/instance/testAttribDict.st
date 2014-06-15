testing
testAttribDict
	| elem dic1 dic2 |
	elem :=self simpleXmlElement.
	dic1 := SoXmlUtil attribDictFrom: elem.
	dic2 := Dictionary new.
	dic2 at: 'a' put: '1'.
	dic2 at: 'b' put: '2'.
	self should:[dic1 = dic2]