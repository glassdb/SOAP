testing
testBuildClientSoapFaultEnvelope
	| builder env body fault |
	builder := SoapEnvelopeBuilder new.
	env := builder
				buildClientSoapFaultEnvelope: (ZeroDivide new dividend: 7).
	body := env body.
	self should: [body name = 'env:Body'].
	self should: [body hasFault].
	fault := body fault.
	self should: [fault name = 'env:Fault'].
	self should: [fault faultcode = 'env:Client'].