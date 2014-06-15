xsd types
xsdBase64BinaryType
	^self at: #xsdBase64Binary ifAbsentPutValue: (self xsdPrefixColon, 'base64Binary')