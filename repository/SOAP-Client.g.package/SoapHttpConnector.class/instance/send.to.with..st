actions
send: aSoapEnvelope to: anSoapTcpLocator with: aSoapContext 
	"return aSoapMessage or nil"
	| page soapClient envBuilder rawString returnEnvelope message |
	self debugSend: aSoapEnvelope to: anSoapTcpLocator with: aSoapContext.
	page := aSoapContext targetObjectURI.
	soapClient := SoapHttpClient
				host: anSoapTcpLocator host
				port: anSoapTcpLocator port
				page: page.
	envBuilder := self envelopeBuilder.
	[[rawString := soapClient send: aSoapEnvelope printXmlString action: aSoapContext soapAction.
	returnEnvelope := envBuilder buildSoapEnvelopeFromXmlString: rawString]
		on: SoapHttpGenericError
		do: [:ex | ex errorCode = '500'
				ifTrue: [returnEnvelope :=  envBuilder buildSoapEnvelopeFromXmlString: (ex errorContents)] ifFalse: [ex pass]]]
		on: SoapCannotResolveServer , SoapCannotConnectToServer
		do: [:ex | returnEnvelope := envBuilder buildClientSoapFaultEnvelope: ex].
	message := SoapMessage envelope: returnEnvelope.
	self debugReturn: message.
	^message