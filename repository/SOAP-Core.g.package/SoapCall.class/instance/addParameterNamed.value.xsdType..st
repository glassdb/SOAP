actions
addParameterNamed: paramName value: paramValue xsdType: xsdType
	^self addParameter: (SoapVariable name: paramName value: paramValue xsdType: xsdType).