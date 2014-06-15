actions
buildSoapEnvelopeFromXmlString: anXmlString 
	[| elem envelope | 
	elem := SoapWrapElement fromXml: anXmlString.
	envelope :=  SoapEnvelope fromXmlElement: elem.
	envelope declareTypicalNamespaces.
	^envelope]
		on: Error
		do: [:ex | 
			(ObjectLogEntry 
				error: 'SOAP error' 
				object: {ex description. (GsProcess stackReportToLevel: 300).}) addToLog.
			^ self buildServerSoapFaultEnvelope: ex]