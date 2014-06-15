actions
addParameterNamed: paramName xsdType: xsdType namespace: namespaceURI
	^self addParameter: (SoapVariable name: paramName xsdType: xsdType namespace: namespaceURI).