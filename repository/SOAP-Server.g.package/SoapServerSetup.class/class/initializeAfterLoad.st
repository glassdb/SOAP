class initialization
initializeAfterLoad

	self name == #SoapServerSetup
		ifFalse: [SoapServerSetupMap at: self transportName asSymbol put: self].