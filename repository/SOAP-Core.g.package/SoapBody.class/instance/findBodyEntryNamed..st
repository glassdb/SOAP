actions
findBodyEntryNamed: anElemName
	^self bodyEntries detect: [:each | each name = anElemName] ifNone:[]