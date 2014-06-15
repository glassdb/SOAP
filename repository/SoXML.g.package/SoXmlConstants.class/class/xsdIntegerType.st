xsd types
xsdIntegerType
	^self at: #xsdIntegerType ifAbsentPutValue: (self xsdPrefixColon, 'integer')