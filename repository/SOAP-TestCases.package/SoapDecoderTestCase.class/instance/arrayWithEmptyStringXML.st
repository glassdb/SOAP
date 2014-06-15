fixtures
arrayWithEmptyStringXML
	^ ' <m:reverseArray
xmlns:m="http://www.mars.dti.ne.jp/~umejava/smalltalk/soapOpera/rpc/"
SOAP-ENV:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"
xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/"
xmlns:xsd="http://www.w3.org/2001/XMLSchema"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/">
<anArray SOAP-ENC:arrayType="xsd:anyType[3]">
<item xsi:type="xsd:string">Hello</item>
<item xsi:type="xsd:string"></item>
<item xsi:type="xsd:string">Dolphin</item>
</anArray>
</m:reverseArray>
'