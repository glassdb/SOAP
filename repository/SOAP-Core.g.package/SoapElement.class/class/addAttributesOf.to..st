private
addAttributesOf: anXmlWrapElement to: aSoapElement
	anXmlWrapElement attributesDictionary
		keysAndValuesDo: [:k :v | aSoapElement putAttributeNamed: k value: v].