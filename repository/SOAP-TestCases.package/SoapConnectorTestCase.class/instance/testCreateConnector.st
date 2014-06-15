testing
testCreateConnector
	| con |
	con := SoapConnectorFactory createFrom: #http.
	self should: [con class = SoapHttpConnector].
	
	self should: [SoapConnectorFactory createFrom: #auau] raise: SoapNoSuchConnector.