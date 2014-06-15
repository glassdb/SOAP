actions
attribDictFrom: aParsedXMLElement
	aParsedXMLElement isText ifTrue:[^Dictionary new].
	^aParsedXMLElement attributes