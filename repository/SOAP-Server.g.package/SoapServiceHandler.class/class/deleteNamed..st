actions
deleteNamed: aSymbol
	^self handlerDict removeKey: aSymbol ifAbsent: []