actions
send: aSoapEnvelope to: anSoapLocatorObject with: aSoapContext
	"1. add an addittinal protocolSpecific header to aSoapEnvelope"
	"2. send a SoapMessage to a remote server"
	"3. get the result and unmarshall it"
	"4. return aSoapMessage or nil"
	
	^self subclassResponsibility