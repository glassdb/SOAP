accessing
complexXsdTypeOf: anObject
	^self complexTypeDict at: anObject class name ifAbsent: []