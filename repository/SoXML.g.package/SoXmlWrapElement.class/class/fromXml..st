from xml
fromXml: xmlString
	^self fromXmlElement: (SoXmlUtil parseXml: xmlString).