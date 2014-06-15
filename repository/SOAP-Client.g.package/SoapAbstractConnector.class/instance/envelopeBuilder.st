accessing
envelopeBuilder
	envelopeBuilder isNil ifTrue: [envelopeBuilder := SoapEnvelopeBuilder new].
	^envelopeBuilder