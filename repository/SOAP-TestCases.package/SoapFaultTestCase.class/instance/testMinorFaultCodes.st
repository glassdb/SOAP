testing
testMinorFaultCodes
	| fault |
	"##OBSOLETE## hierarchical notation is no longer used in SOAP1.2"

	fault := SoapFault client faultstring: 'Client Error!'.
	fault attachMinorFaultCodes: #('Authentication' 'Password' 'Expired').
		
	self should:[fault faultcode = (SoapConstants soapEnvPrefixColon, 'Client.Authentication.Password.Expired')].