actions
elementsWithoutBlankTextsFrom: aParsedXMLElement 
	"assuming YAXO"
	^ aParsedXMLElement elements
		, (aParsedXMLElement contents
				reject: [:each | SoPortableUtil portableSubclass isBlank: each characterData])