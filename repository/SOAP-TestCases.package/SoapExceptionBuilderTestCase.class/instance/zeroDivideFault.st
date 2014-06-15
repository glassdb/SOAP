fixtures
zeroDivideFault
	^ [1 / 0]
		on: ZeroDivide
		do: [:ex | 
			| soapFault soapFaultDetailBuilder | 
			soapFault := SoapFault new.
			soapFaultDetailBuilder := SoapFaultDetailBuilder new.
			soapFaultDetailBuilder buildSoapFaultDetailOn: soapFault from: ex.
			ex return: soapFault]