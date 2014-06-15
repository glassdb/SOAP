file out
fileoutClientModules
	"self fileoutClientModules"
#(
'SoXML-Base'
'SoXML-ParserAdapter'
'SOAP-Base'
'SOAP-Elements'
'SOAP-DataBinding'
'SOAP-Encoding'
'SOAP-Decoding'
'SOAP-ClientBase'
'SOAP-Http'
'SOAP-Http-Client'
'SOAP-RPC'
'SOAP-Example'
'SOAP-GoogleWebAPI'
'SOAP-TranslateExample'
'SOAP-CustomComplexType'
) do: [:each |
SystemOrganization fileOutCategory: each.
].