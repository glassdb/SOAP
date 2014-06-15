accessing
encodingStyleURIs
	encodingStyleURIs isNil ifTrue:[ encodingStyleURIs := Array with: SoapConstants soapEncURI].
	^encodingStyleURIs