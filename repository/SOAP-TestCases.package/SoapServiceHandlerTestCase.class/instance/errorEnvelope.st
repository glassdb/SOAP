fixtures
errorEnvelope
	| xmlStr env |
	xmlStr := self errorEnvelopeXml.
	env := SoapEnvelopeBuilder new buildSoapEnvelopeFromXmlString: xmlStr.
	^env