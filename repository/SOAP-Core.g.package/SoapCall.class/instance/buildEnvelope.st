building envelope
buildEnvelope
	| env |
	env := self envelope.
	env declareTypicalNamespaces.
	self encoder reset.
	self useLiteral
		ifFalse: [env declareEncodingIn: SoapConstants soapEnvPrefix uri: self encodingStyleURIString.
			self encoder isSoapEncoder
				ifTrue: [env declareSoapEncNamespace]].
	self optionHeaderProperties isEmpty
		ifFalse: [self buildSoapHeader: env addHeader].
	env addBody.
	self buildSoapBody: env body.
	^ env