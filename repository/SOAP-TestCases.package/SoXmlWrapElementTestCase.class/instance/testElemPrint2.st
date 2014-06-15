testing
testElemPrint2
	| fixString wStr xmlElem  child |
	fixString :=  '<SMIX>
 <interchangeUnit>
  <classDefinition className="Customer">
   <instVarNames>name address tel</instVarNames>
  </classDefinition>
 </interchangeUnit>
</SMIX>
'.
	wStr := WriteStream on: (String new: 16).
	xmlElem := SoXmlWrapElement new.
	xmlElem name: 'SMIX'.
	child := xmlElem createChildNamed: 'interchangeUnit'.
	child := child createChildNamed: 'classDefinition'.
	child putAttribute: #(className Customer).
	child := child createChildNamed: 'instVarNames'.
	child value: 'name address tel'.
	xmlElem printXmlOn: wStr.
	
	self should:[wStr contents = fixString].