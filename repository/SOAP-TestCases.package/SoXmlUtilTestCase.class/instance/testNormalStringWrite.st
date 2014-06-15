testing
testNormalStringWrite
	| str1 str2 |
	str1 := self normalString.
	str2 := SoXmlUtil asXmlText: str1.
	self should: [str1 = str2]