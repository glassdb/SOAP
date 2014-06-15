actions
parseXml: xmlString
	"assuming Yax"
	^(XMLDOMParser parseDocumentFrom: (ReadStream on: xmlString)) topElement