actions
at: aSymbol 
	| cls |
	cls := super at: aSymbol.
	^ cls isNil
		ifTrue: [SoapNoSuchTransport signal: aSymbol printString]
		ifFalse: [cls]