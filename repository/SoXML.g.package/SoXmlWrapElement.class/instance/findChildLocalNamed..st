actions
findChildLocalNamed: anElemName
	^self children detect: [:each | each localName = anElemName] ifNone:[]