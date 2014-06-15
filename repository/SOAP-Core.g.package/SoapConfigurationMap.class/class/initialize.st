class initialization
initialize
	"SoapConfigurationMap initialize"
	
	self initImplDict.
	
	Smalltalk at: self rootImplClassName ifPresent:[:found | found initializeAll].