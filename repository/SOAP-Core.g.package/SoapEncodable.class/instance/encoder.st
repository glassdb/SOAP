accessing
encoder
	encoder isNil
		ifTrue: [encoder := parent isNil
						ifTrue: [SoapEncoderFactory createFrom: self encodingStyleURIs]
						ifFalse: [parent encoder]].
	^ encoder