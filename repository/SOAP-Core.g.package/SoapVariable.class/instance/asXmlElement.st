converting
asXmlElement
	| elem |
	elem := self encoder encodeSoapVariable: self.
	(self parent isNil or:[ self parent encoder class ~= self encoder class])
		ifTrue: [elem declareEncodingIn: SoapConstants soapEnvPrefix uri: self encodingStyleURIString].
	^elem