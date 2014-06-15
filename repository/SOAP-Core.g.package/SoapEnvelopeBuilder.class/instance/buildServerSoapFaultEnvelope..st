actions
buildServerSoapFaultEnvelope: anError 
	| env fault builder |
	env := SoapEnvelope new.
	fault := env addBody addFault server.
	builder := SoapFaultDetailBuilder new.
	builder buildSoapFaultDetailOn: fault from: anError.
	^ env