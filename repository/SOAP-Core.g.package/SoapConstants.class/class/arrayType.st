attributes
arrayType
	
	^self at: #arrayType ifAbsentPutValue: (self soapEncPrefixColon, 'arrayType')