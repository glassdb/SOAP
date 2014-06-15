actions
buildClientSoapFaultEnvelope: anError 
	| env fault builder |
	env := SoapEnvelope new.
	fault := env addBody addFault client.
	builder := SoapFaultDetailBuilder new.
	builder buildSoapFaultDetailOn: fault from: anError.
	^ env