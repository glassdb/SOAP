fixtures
echoBoolean
	"From ROUND 2 SOAP Interoperability Tests Specification"
	"http://www.whitemesa.com/interop/proposal2.html#echoInteger"

	^'<?xml version="1.0" encoding="UTF-8"?>

<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" SOAP-ENV:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">
<SOAP-ENV:Body>
<m:echoBoolean xmlns:m="http://soapinterop.org/">
<inputBoolean>1</inputBoolean>
</m:echoBoolean>
</SOAP-ENV:Body>
</SOAP-ENV:Envelope>'