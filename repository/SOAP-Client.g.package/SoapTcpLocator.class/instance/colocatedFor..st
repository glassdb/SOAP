testing
colocatedFor: transportSymbol
	| runningPort |
	self colocated ifFalse: [^false].
	runningPort := self class serverSetup runningPortAt: transportSymbol.
	^runningPort = self port