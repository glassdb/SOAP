testing
testComplexStringWrite
	| str1 str2 str3 |
	str1 := self compString.
	str2 := SoXmlUtil asXmlText: str1.
	str3 := self normalString, '&lt;&gt;&apos;&quot;&amp;'.
	self shouldnt: [str1 = str2].
	self should:[str2 = str3]