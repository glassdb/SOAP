fixtures
messageNotUnderstoodFault
	^ [nil add: 1 ]
		on: MessageNotUnderstood
		do: [:ex | 
			| soapFault soapFaultDetailBuilder | 
			soapFault := SoapFault new.
			soapFaultDetailBuilder := SoapFaultDetailBuilder new.
			soapFaultDetailBuilder buildSoapFaultDetailOn: soapFault from: ex.
			ex return: soapFault]