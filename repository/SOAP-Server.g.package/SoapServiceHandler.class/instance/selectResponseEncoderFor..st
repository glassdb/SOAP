private
selectResponseEncoderFor: aMethodElement 
	^self class useResponseEncoder
		ifTrue: [self responseEncoder reset]
		ifFalse: [self context encodingStyleURIs isEmpty
				ifTrue: [SoapEncoderFactory createFrom: aMethodElement encodingStyleURIs]
				ifFalse: [SoapEncoderFactory createFrom: self context encodingStyleURIs]]