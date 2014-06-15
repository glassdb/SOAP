class initialization
initialize
	"SoapServerSetup initialize"
	self name == #SoapServerSetup
		ifTrue: [Smalltalk addToStartUpList: self.
			Smalltalk addToShutDownList: self]
		ifFalse: [SoapServerSetupMap at: self transportName asSymbol put: self.
			self release]