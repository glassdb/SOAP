file out
fileoutServerModules
	"self fileoutServerModules"
#(
'SoXML-Base'
'SoXML-ParserAdapter'
'SOAP-Base'
'SOAP-Elements'
'SOAP-DataBinding'
'SOAP-Encoding'
'SOAP-Decoding'
'SOAP-ServerBase'
'SOAP-Http'
'SOAP-Http-Comanche'
'SOAP-RPC'
'SOAP-Example'
) do: [:each |
SystemOrganization fileOutCategory: each.
].