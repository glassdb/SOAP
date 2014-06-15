actions
buildSoapFaultDetailOn: aSoapFault from: anError 
	| errorPrefix details stErrorClass isResumable messageText stack detail |
	aSoapFault faultstring: anError description.
	errorPrefix := self class defaultPrefix.
	details := SoapWrapElement named: 'details' withPrefix: errorPrefix.
	details declareNamespace: errorPrefix uri: self class defaultNamespace.
	stErrorClass := details createChildNamed: 'ErrorClass'.
	stErrorClass value: anError class name.
	isResumable := details createChildNamed: 'isResumable'.
	isResumable value: anError isResumable printString.
	anError messageText isNil
		ifFalse: [messageText := details createChildNamed: 'messageText'.
			messageText value: anError messageText].
	stack := details createChildNamed: 'stack'.
	stack value: (SoPortableUtil portableSubclass stackTraceFrom: anError).
	detail := aSoapFault addDetail.
	detail addSubElement: details.
	^ detail