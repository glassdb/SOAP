class initialization
initializeAll
	"SoapAbstractConnector initializeAll"
	
	self subclassesDo: [:each | each initialize]