accessing
envelope
	envelope isNil ifTrue: [envelope := SoapEnvelope new].
	^envelope