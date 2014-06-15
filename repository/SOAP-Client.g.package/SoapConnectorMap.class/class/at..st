actions
at: aSymbol
	| cls |
	cls := super at: aSymbol.
	^cls isNil ifTrue:[SoapNoSuchConnector signal: aSymbol] ifFalse:[cls new]