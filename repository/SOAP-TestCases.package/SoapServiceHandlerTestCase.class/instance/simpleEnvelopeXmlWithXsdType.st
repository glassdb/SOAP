fixtures
simpleEnvelopeXmlWithXsdType
	^'<?xml version="1.0" encoding="UTF-8"?>

<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" SOAP-ENV:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">
<SOAP-ENV:Body>
<m:add xmlns:m="http://soapinterop.org/">
<newElem xsi:type="xsd:float">1.02</newElem>
</m:add>
</SOAP-ENV:Body>
</SOAP-ENV:Envelope>'