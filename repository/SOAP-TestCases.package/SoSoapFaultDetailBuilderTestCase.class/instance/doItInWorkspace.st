for workspace
doItInWorkspace
	"SoSoapFaultDetailBuilderTestCase new doItInWorkspace"
	| soapFaultDetail res1 res2 res3 details res4 res5 res6 results |
	soapFaultDetail := [1 / 0]
				on: Error
				do: [:ex | 
					| build de | 
					build := SoapFaultDetailBuilder new.
					de := build buildSoapFaultDetailOn: SoapFault server from: ex.
					de].
	res1 := soapFaultDetail parent name= 'SOAP-ENV:Fault'.
	res2 := soapFaultDetail parent faultstring =  'ZeroDivide'.
	res3 := soapFaultDetail name = 'detail'.
	details := soapFaultDetail subElements first.
	res4 := details shortName = 'details'.
	res5 := (details declaredNamespaceURIFor: SoapFaultDetailBuilder defaultPrefix)
				= SoapFaultDetailBuilder defaultNamespace.
	
	res6 := (details findChildNamed: 'ErrorClass') value =  'ZeroDivide'.
	
	results := OrderedCollection new.
	results add: res1.
	results add: res2.
	results add: res3.
	results add: res4.
	results add: res5.
	results add: res6.
	results inspect