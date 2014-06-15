fixtures
referenceUsingEnvelope
	| xmlStr env |
	xmlStr := self referenceUsingEnvelopeXml.
	env := SoapEnvelopeBuilder new buildSoapEnvelopeFromXmlString: xmlStr.
	^env