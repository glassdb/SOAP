accessing
defaultResponseEncoder
	defaultResponseEncoder isNil ifTrue: [defaultResponseEncoder := SoapEncoder new].
	^defaultResponseEncoder