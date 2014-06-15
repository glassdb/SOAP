actions
createFrom: anArrayOfEncodingStyleURI 
	| uriArr key |
	anArrayOfEncodingStyleURI size > 1
		ifTrue: [self noSuchDataBinder signal: 'Currently multi encodingStyleURI is not supported'].
	uriArr := (anArrayOfEncodingStyleURI isNil
					or: [anArrayOfEncodingStyleURI isEmpty])
				ifTrue: [self defaultEncodingStyleURIs.]
				ifFalse: [anArrayOfEncodingStyleURI].
	key := uriArr first.	"##TODO: to support multi encoders"
	^ (self dataBindingDict
		at: key
		ifAbsent: [self noSuchDataBinder signal: key]) new