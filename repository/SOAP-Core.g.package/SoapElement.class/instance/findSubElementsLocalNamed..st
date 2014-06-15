actions
findSubElementsLocalNamed: anElemName
	^self subElements select: [:each | each localName = anElemName]