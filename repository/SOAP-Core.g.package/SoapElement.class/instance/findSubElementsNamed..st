actions
findSubElementsNamed: anElemName
	^self subElements select: [:each | each name = anElemName]