fixtures
dotNetSharedValuesEnvelopeXML3

^'<soap:Envelope xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xmlns:types="http://tempuri.org/" xmlns:tns="http://tempuri.org/" 
xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" 
xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/">
 <soap:Body soap:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">
  <types:GoResponse>
   <GoResult href="#id1"></GoResult>
   <aSimpleOutParam xsi:type="xsd:int">42</aSimpleOutParam>
   <aMultiValOutParam href="#id2"></aMultiValOutParam>
  </types:GoResponse>
  <soapenc:Array id="id1" soapenc:arrayType="xsd:string[10]">
   <Item>632900993212352500</Item>
   <Item>632900993212508750</Item>
  </soapenc:Array>
  <soapenc:Array id="id2" soapenc:arrayType="xsd:int[3]">
   <Item>1</Item>
   <Item>2</Item>
   <Item>3</Item>
  </soapenc:Array>
 </soap:Body>
</soap:Envelope>'