class initialization
obsolete
	self name == #SoapAbstractConnector
		ifFalse: [SoapConnectorMap removeAt: self transportName asSymbol].
	super obsolete