fixtures
referenceUsingEnvelopeXml
	^'<?xml version="1.0" encoding="utf-8"?>

<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsd="http://www.w3.org/2001/XMLSchema"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<soapenv:Body>

<ns1:getAvailableLockers
soapenv:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"
xmlns:ns1="urn:SoftLocker">
<clientTag href="#id0"/>
<postCode xsi:type="xsd:string">RH1 6NT</postCode>
</ns1:getAvailableLockers>

<multiRef id="id0" soapenc:root="0"
soapenv:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"
xsi:type="xsd:integer"
xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/">4242</multiRef>

</soapenv:Body>

</soapenv:Envelope>

'