actions-encoding
encodingStyleURI: aURIString
	parameters notNil
		ifTrue: [self parameters
				do: [:each | each encodingStyleURI: aURIString]].
	super encodingStyleURI: aURIString.