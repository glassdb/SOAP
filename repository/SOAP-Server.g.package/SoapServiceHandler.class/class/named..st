instance creation
named: aSymbol
	^self handlerDict at: aSymbol ifAbsentPut: [self new]