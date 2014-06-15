testing
testBasicFault
	
	| fault detail |
	fault := SoapFault client faultstring: 'Client Error!'.
	self should: [fault faultcode = (SoapConstants soapEnvPrefixColon, SoapConstants client)].
	self should: [fault faultstring = 'Client Error!'].
	
	detail := fault addDetail.
	self should: [detail  name = 'detail'].