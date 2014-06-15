actions
findBodyEntriesNamed: anElemName
	^self bodyEntries select: [:each | each name = anElemName]