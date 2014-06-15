actions
debugSend: aSoapEnvelope to: anSoapLocatorObject with: aSoapContext
	
	self class showLog  
		ifTrue: [Transcript cr; show: '##', super printString, ' Client:Request:{'.
			Transcript cr; show: aSoapEnvelope printString.
			Transcript cr; show: '} to ->'.
			Transcript cr; show: anSoapLocatorObject printString.
			Transcript cr; show: '-> with ->'.
			Transcript cr; show: aSoapContext printString].