actions-encoding
encoder: aValue 
	parameters notNil
		ifTrue: [self parameters
				do: [:each | each encoder: aValue]].
	super encoder: aValue.