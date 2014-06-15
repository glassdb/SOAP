xsd types
xsdFloatType
	^self at: #xsdFloatType ifAbsentPutValue: (self xsdPrefixColon, 'float')