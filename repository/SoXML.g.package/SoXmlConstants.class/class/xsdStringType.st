xsd types
xsdStringType
	^self at: #xsdStringType ifAbsentPutValue: (self xsdPrefixColon, 'string')