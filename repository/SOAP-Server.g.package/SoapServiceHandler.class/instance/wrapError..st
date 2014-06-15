private
wrapError: anError
	| body fault errorName |
	body := self envelope body.
	body clearBodyEntries.
	fault := body addFault.
	self faultDetailBuilder buildSoapFaultDetailOn: fault from: anError.
	errorName := anError class name.
	(#(#SoapNoSuchService #SoapInvalidParamName #SoapDecodingError) includes: errorName)
		ifTrue: [fault client]
		ifFalse: [fault server].
	^ self envelope