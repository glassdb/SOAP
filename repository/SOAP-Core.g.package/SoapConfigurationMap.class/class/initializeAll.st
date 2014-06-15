class initialization
initializeAll
	"SoapConfigurationMap initializeAll"
	
	self allSubclassesDo:[:each | each initialize]