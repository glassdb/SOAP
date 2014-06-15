fixtures
simpleEnvelope
	| xmlStr env |
	xmlStr := self simpleEnvelopeXml.
	env := SoapEnvelopeBuilder new buildSoapEnvelopeFromXmlString: xmlStr.
	^env