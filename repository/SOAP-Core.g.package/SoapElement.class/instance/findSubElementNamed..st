actions
findSubElementNamed: anElemName
	^self subElements detect: [:each | each name = anElemName] ifNone:[]