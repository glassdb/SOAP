class initialization
initialize
	"SoapSampleCustomer initialize"

	SoapEncoder complexTypeDict at: self name put: 'types:Customer'.
	SoapLiteralEncoder complexTypeDict at: self name put: 'types:Customer'.

	SoapDecoder complexTypeDict at: 'types:Customer' put: self.