actions
send: soapEnvelope 
	| cont |
	cont := nil.
	self prepareEnvelope: soapEnvelope.
	self prepareHeader.
	self initializeNetwork.
	self resolveServerAddress.
	[self prepareSocket.
	self sendBySocket. 
	cont := self getResponseContents]
		ensure: [self releaseSocket].
	^ cont