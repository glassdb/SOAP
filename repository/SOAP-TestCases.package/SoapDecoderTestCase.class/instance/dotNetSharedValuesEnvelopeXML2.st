fixtures
dotNetSharedValuesEnvelopeXML2

^'<soap:Envelope xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xmlns:types="http://tempuri.org/" xmlns:tns="http://tempuri.org/" 
xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" 
xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/">
 <soap:Body soap:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">
  <types:FindCustomersResponse>
   <FindCustomersResult href="#id1"></FindCustomersResult>
  </types:FindCustomersResponse>
  <soapenc:Array id="id1" soapenc:arrayType="types:Customer[2]">
   <Item href="#id2"></Item>
   <Item href="#id3"></Item>
  </soapenc:Array>
  <types:Customer id="id2" xsi:type="types:Customer">
   <Name xsi:type="xsd:string">Ume</Name>
   <Age xsi:type="xsd:int">36</Age>
   <DateOfBirth 
xsi:type="xsd:dateTime">1970-11-22T00:00:00.0000000-07:00</DateOfBirth>
  </types:Customer>
  <types:Customer id="id3" xsi:type="types:Customer">
   <Name xsi:type="xsd:string">Ramon</Name>
   <Age xsi:type="xsd:int">31</Age>
   <DateOfBirth 
xsi:type="xsd:dateTime">1995-11-22T00:00:00.0000000-07:00</DateOfBirth>
  </types:Customer>
 </soap:Body>
</soap:Envelope>
'