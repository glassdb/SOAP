fixtures
complexDataXML
	"Google API like complex XML"
	^' <return xsi:type="ns1:GoogleSearchResult" xmlns:xsi="http://www.w3.org/1999/XMLSchema-instance" xmlns:xsd="http://www.w3.org/1999/XMLSchema">
   <documentFiltering xsi:type="xsd:boolean">false</documentFiltering>
   <estimatedTotalResultsCount xsi:type="xsd:int">1</estimatedTotalResultsCount>
   <directoryCategories xmlns:ns2="http://schemas.xmlsoap.org/soap/encoding/" xsi:type="ns2:Array" ns2:arrayType="ns1:DirectoryCategory[0]"></directoryCategories>
   <searchTime xsi:type="xsd:double">0.194871</searchTime>
   <resultElements xmlns:ns3="http://schemas.xmlsoap.org/soap/encoding/" xsi:type="ns3:Array" ns3:arrayType="ns1:ResultElement[1]">
     <item xsi:type="ns1:ResultElement">
  <cachedSize xsi:type="xsd:string">2k</cachedSize>
  <hostName xsi:type="xsd:string">somehost</hostName>
  <snippet xsi:type="xsd:string">snippet...</snippet>
  <directoryCategory xsi:type="ns1:DirectoryCategory">
    <specialEncoding xsi:type="xsd:string"></specialEncoding>
    <fullViewableName xsi:type="xsd:string"></fullViewableName>
  </directoryCategory>
  <relatedInformationPresent xsi:type="xsd:boolean">true</relatedInformationPresent>
  <directoryTitle xsi:type="xsd:string"></directoryTitle>
  <summary xsi:type="xsd:string"></summary>
  <URL xsi:type="xsd:string">http://www.squeak.org</URL>
  <title xsi:type="xsd:string">Squeak home page</title>
     </item>
   </resultElements>
   <endIndex xsi:type="xsd:int">1</endIndex>
   <searchTips xsi:type="xsd:string"></searchTips>
   <searchComments xsi:type="xsd:string"></searchComments>
   <startIndex xsi:type="xsd:int">1</startIndex>
   <estimateIsExact xsi:type="xsd:boolean">true</estimateIsExact>
   <searchQuery xsi:type="xsd:string">squeak</searchQuery>
 </return>'