actions
findChildrenLocalNamed: anElemName
	^self children select: [:each | each localName = anElemName]