initialization
initialize
	"self initialize"

	SoapEncoder complexTypeDict at: self name put: 'ns1:SOAPStruct'.
	SoapLiteralEncoder complexTypeDict at: self name put: 'ns1:SOAPStruct'.

	SoapDecoder complexTypeDict at: 'ns1:SOAPStruct' put: self.