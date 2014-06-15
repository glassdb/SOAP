actions
send: aSoapEnvelope to: anSoapLocatorObject with: aSoapContext 
	| sercviceHandler returnEnv message |
	"ignore the locator and just invoke a local call"
	
	self debugSend: aSoapEnvelope to: anSoapLocatorObject with: aSoapContext.
	
	sercviceHandler := SoapServiceHandler default.
	returnEnv := sercviceHandler dispatch: aSoapEnvelope with: aSoapContext.
	message := SoapMessage envelope: returnEnv.
	self debugReturn: message.
	^message