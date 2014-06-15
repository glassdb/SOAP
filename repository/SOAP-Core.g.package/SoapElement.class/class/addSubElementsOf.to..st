private
addSubElementsOf: anXmlWrapElement to: aSoapElement
	anXmlWrapElement children
		do: [:each | aSoapElement addSubElement: each].