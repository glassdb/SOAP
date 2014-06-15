actions
getSignatureNamed: aSignatureName 
	^ (self signature name = aSignatureName asString)
		ifTrue:[self signature]
		ifFalse: [SoapNoSuchService signal: aSignatureName]