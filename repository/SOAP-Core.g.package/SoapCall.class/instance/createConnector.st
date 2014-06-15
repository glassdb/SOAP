factory
createConnector
	| trans |
	trans := self transport.
	(self useColocation
			and: [self locator colocatedFor: self transport])
		ifTrue: [trans := #localRpc].
	^ SoapConnectorFactory createFrom: trans