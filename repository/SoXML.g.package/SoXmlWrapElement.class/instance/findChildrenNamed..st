actions
findChildrenNamed: anElemName
	^self children select: [:each | each name = anElemName]