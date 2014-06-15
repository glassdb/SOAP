fixtures
echoString
	"From ROUND 2 SOAP Interoperability Tests Specification"
	"http://www.whitemesa.com/interop/proposal2.html#echoString"
	^ '<?xml version="1.0" encoding="UTF-8"?>

<SOAP-ENV:Envelope SOAP-ENV:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<SOAP-ENV:Body>
<m:echoString xmlns:m="http://soapinterop.org/">
<inputString>hello world</inputString>
</m:echoString>
</SOAP-ENV:Body>
</SOAP-ENV:Envelope>
'