actions-encoding
encodingStyleURIs: aValue
	parameters notNil
		ifTrue: [self parameters
				do: [:each | each encodingStyleURIs: aValue]].
	super encodingStyleURIs: aValue.