testing
testConvStringWrite
	| str1 str2 str3 |
	str1 := self convString.
	str2 := SoXmlUtil asXmlText: str1.
	str3 := '&lt;&gt;&apos;&quot;&amp;'.
	self shouldnt: [str1 = str2].
	self should:[str2 = str3]