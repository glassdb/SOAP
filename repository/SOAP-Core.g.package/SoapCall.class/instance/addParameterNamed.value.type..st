actions
addParameterNamed: paramName value: paramValue type: xsdType
	^self addParameter: (SoapVariable name: paramName value: paramValue type: xsdType).