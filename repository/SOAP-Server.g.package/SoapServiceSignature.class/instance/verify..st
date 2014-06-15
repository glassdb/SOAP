actions
verify: aSoapServiceSignature
	aSoapServiceSignature paramNames size = self paramNames size 
		ifFalse: [SoapInvalidParamNumber signal: aSoapServiceSignature paramNames size asString].
	aSoapServiceSignature paramNames do: [:each | (self nameExists: each) ifFalse:[SoapInvalidParamName signal: each]].
	^true