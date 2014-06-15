accessing
useLiteral: aBoolean 
	useLiteral := aBoolean.
	useLiteral
		ifTrue: [self encoder: SoapLiteralEncoder new]
		ifFalse: [self encoder isLiteralEncoder
				ifFalse: [self encoder: nil]]