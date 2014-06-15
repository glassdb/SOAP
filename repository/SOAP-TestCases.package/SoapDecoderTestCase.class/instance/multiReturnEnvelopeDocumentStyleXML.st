fixtures
multiReturnEnvelopeDocumentStyleXML

^'<soapenv:Envelope xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:env="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <soapenv:Header>
 </soapenv:Header>
 <soapenv:Body>
  <ns:sampleResponse xmlns:ns="http://service.spring/xsd">
   <ns:return>
    <id xmlns="http://bean.spring/xsd">5</id>
    <number xmlns="http://bean.spring/xsd">65413</number>
    <address1 xmlns="http://bean.spring/xsd">Brno-Chrlice</address1>
    <address2 xmlns="http://bean.spring/xsd">Brno-msto</address2>
   </ns:return>
   <ns:return>
    <id xmlns="http://bean.spring/xsd">1</id>
    <number xmlns="http://bean.spring/xsd">65384</number>
    <address1 xmlns="http://bean.spring/xsd">Liberec</address1>
    <address2 xmlns="http://bean.spring/xsd">Chrastava</address2>
   </ns:return>
  </ns:sampleResponse>
 </soapenv:Body>
</soapenv:Envelope>'