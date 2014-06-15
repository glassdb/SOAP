fixtures
echoInteger
	
	"From ROUND 2 SOAP Interoperability Tests Specification"
	"http://www.whitemesa.com/interop/proposal2.html#echoInteger"

	^'<?xml version="1.0" encoding="UTF-8"?>

<SOAP-ENV:Envelope SOAP-ENV:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<SOAP-ENV:Body>
<m:echoInteger xmlns:m="http://soapinterop.org/">
<inputInteger>42</inputInteger>
</m:echoInteger>
</SOAP-ENV:Body>
</SOAP-ENV:Envelope>'