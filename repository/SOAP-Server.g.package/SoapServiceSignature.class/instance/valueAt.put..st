actions
valueAt: aParamName put: aParamValue 
	(self paramNames includes: aParamName)
		ifTrue: [self paramValues at: aParamName put: aParamValue]
		ifFalse: [SoapInvalidParamName signal: aParamName]