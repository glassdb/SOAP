actions
addParameterNamed: paramName value: paramValue xsdType: xsdType namespace: namespaceURI
	^self addParameter: (SoapVariable name: paramName value: paramValue xsdType: xsdType namespace: namespaceURI ).