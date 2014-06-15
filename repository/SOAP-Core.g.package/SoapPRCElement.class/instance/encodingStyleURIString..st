actions-encoding
encodingStyleURIString: anEncodingStyleURI 
	parameters notNil
		ifTrue: [self parameters
				do: [:each | each encodingStyleURIString: anEncodingStyleURI]].
	super encodingStyleURIString: anEncodingStyleURI.