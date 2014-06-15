xsd types
xsdDoubleType
	^self at: #xsdDoubleType ifAbsentPutValue: (self xsdPrefixColon, 'double')