xsd types
xsdAnyType
	^self at: #xsdAnyType ifAbsentPutValue: (self xsdPrefixColon, 'anyType')