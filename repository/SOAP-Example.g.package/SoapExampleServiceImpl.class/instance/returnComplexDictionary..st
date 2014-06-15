actions
returnComplexDictionary: aDictionary
	| dictionary |
	dictionary := aDictionary.
	dictionary at: #Smalltlak put: 'Best'.
	dictionary at: #Ruby put: #('Beautiful' 'Need IDE').
	^dictionary