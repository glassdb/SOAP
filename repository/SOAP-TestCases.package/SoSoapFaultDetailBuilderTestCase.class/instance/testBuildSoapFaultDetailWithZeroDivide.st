testing
testBuildSoapFaultDetailWithZeroDivide
	"###COULD NOT RUN - BECAUSE OF SUNIT ERROR###"
	"DO it in workspace instead"
	"| soapFaultDetail  details |
	soapFaultDetail := [1 / 0]
				on: ZeroDivide
				do: [:ex | 
					| build de | 
					build := SoapFaultDetailBuilder new.
					de := build buildSoapFaultDetailOn: SoapFault server from: ex.
					de].
	self should: [soapFaultDetail parent name = 'SOAP-ENV:Fault'].
	self should: [soapFaultDetail parent faultstring =  'ZeroDivide'].
	self should: [soapFaultDetail name = 'detail'].
	details := soapFaultDetail subElements first.
	self should: [details shortName = 'details'].
	self should: [(details declaredNamespaceURIFor: SoapFaultDetailBuilder defaultPrefix)
				= SoapFaultDetailBuilder defaultNamespace].
	
	self should:[ (details findChildNamed: 'ErrorClass') value =  'ZeroDivide']."