actions
send: soapEnvelope 
	self prepareEnvelope: soapEnvelope.
	self prepareHeader.
	self initializeNetwork.
	self resolveServerAddress.
	^self getResponse