initialize-release
initialize: aSoapMessage
	self initReferenceDict.
	self envelope: aSoapMessage envelope.
	self context: aSoapMessage context