class initialization
obsolete
	self name == #SoapServerSetup
		ifTrue: [self stopAll.
			Smalltalk removeFromStartUpList: self.
			Smalltalk removeFromShutDownList: self]
		ifFalse: [SoapServerSetupMap removeAt: self transportName asSymbol].
	super obsolete