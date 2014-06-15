actions-hooks
prepareEnvelope: soapEnvelopeOrString
	
	soapEnvelopeString := soapEnvelopeOrString isString ifTrue: [ soapEnvelopeOrString ] ifFalse: [soapEnvelopeOrString printXmlString].
	
	bodyString := SoXmlUtil contentsWithXmlDeclaration: soapEnvelopeString.