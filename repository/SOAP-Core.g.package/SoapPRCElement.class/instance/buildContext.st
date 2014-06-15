building context
buildContext
	| ctx | 
	ctx := SoapContext new.
	ctx targetObjectURI: self targetObjectURI.
	^ctx