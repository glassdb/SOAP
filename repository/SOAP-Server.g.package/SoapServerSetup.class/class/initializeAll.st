class initialization
initializeAll
	"SoapServerSetup initializeAll"
	
	self subclassesDo: [:each | each initialize]