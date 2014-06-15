fixtures
simpleEnvelopeWithXsdType
	| xmlStr env |
	xmlStr := self simpleEnvelopeXmlWithXsdType.
	env := SoapEnvelopeBuilder new buildSoapEnvelopeFromXmlString: xmlStr.
	^env