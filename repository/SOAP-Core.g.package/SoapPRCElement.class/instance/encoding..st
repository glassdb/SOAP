actions-encoding
encoding: aSymbol
	parameters notNil
		ifTrue: [self parameters
				do: [:each | each encoding: aSymbol]].
	super encoding: aSymbol.