class initialization
initialize
	"SoapSampleGroup initialize"

	SoapEncoder complexTypeDict at: self name put: 'types:Groups'.
	SoapLiteralEncoder complexTypeDict at: self name put: 'types:Groups'.

	SoapDecoder complexTypeDict at: 'types:Groups' put: self.