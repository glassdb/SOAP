class initialization
initialize
	"SoapExampleClient initialize" 
	hostAddress := 'localhost'.
	port := SoapSetting defaultSendingPort.
	transport := #http.
	targetObjectURI := ''