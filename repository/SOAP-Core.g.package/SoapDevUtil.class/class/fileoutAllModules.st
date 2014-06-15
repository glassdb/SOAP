file out
fileoutAllModules
	"self fileoutAllModules"
#(
'SoXML-Base'
'SoXML-ParserAdapter'
'SOAP-Base'
'SOAP-Elements'
'SOAP-DataBinding'
'SOAP-Encoding'
'SOAP-Decoding'
'SOAP-ClientBase'
'SOAP-ServerBase'
'SOAP-Http'
'SOAP-Http-Client'
'SOAP-Http-Comanche'
'SOAP-RPC'
'SOAP-Example'
'SOAP-GoogleWebAPI'
'SOAP-TranslateExample'
'SOAP-CustomComplexType'
'SOAP-TestCases'
'SOAP-DataBinding-SRP'
'SOAP-TestCases-SRP'
'SOAP-DataBinding-SIXX'
'SOAP-TestCases-SIXX'
'SOAP-Sqtp'
'SOAP-Sqtp-Client'
'SOAP-Sqtp-Server'
'SOAP-TestCases-Sqtp'
) do: [:each |
SystemOrganization fileOutCategory: each.
].