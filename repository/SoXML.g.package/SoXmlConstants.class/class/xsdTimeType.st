xsd types
xsdTimeType
	^self at: #xsdTime ifAbsentPutValue: (self xsdPrefixColon, 'time')