accessing
prefix
	prefix ifNil: [prefix := SoXmlUtil prefixFrom: self name].
	^prefix