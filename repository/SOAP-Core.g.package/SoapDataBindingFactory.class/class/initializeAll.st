class initialization
initializeAll
	"SoapDataBindingFactory initializeAll"
	self allSubclassesDo:[:each | each initialize]