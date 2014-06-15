class initialization
initializeAfterLoad
		
	self name == #SoapAbstractConnector
		ifFalse: [SoapConnectorMap at: self transportName asSymbol put: self].