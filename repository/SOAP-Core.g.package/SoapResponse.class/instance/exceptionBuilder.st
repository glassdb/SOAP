accessing
exceptionBuilder
	exceptionBuilder isNil ifTrue: [exceptionBuilder := SoapExceptionBuilder new].
	^exceptionBuilder