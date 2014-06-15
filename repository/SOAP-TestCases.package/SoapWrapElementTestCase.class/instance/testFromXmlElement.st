testing
testFromXmlElement
	
	| sdom elem body callElem argElem |
	sdom := SoXmlUtil parseXml: self echoString.
	elem := SoapWrapElement fromXmlElement: sdom.
	self should: [elem name = #'SOAP-ENV:Envelope'].
	self should: [(elem getAttributeNamed: 'SOAP-ENV:encodingStyle' ) = 'http://schemas.xmlsoap.org/soap/encoding/'].
	self should: [(elem getAttributeNamed: 'xmlns:SOAP-ENC' ) = 'http://schemas.xmlsoap.org/soap/encoding/'].
	self should: [(elem getAttributeNamed: 'xmlns:SOAP-ENV' ) = 'http://schemas.xmlsoap.org/soap/envelope/'].
	self should: [(elem getAttributeNamed: 'xmlns:xsd' ) = 'http://www.w3.org/2001/XMLSchema'].
	self should: [(elem getAttributeNamed: 'xmlns:xsi' ) = 'http://www.w3.org/2001/XMLSchema-instance'].
	
	body := elem children first.
	self should: [body name = #'SOAP-ENV:Body'].
	
	callElem := body children first.
	self should: [callElem name = #'m:echoString'].
	self should: [(callElem getAttributeNamed: 'xmlns:m' ) = 'http://soapinterop.org/'].
	
	argElem := callElem children first.
	self should: [argElem name = #'inputString'].
	self should: [argElem value = 'hello world'].
	"elem inspect."