actions
findChildNamed: anElemName
	^self children detect: [:each | each name asString = anElemName asString] ifNone:[]