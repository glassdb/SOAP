accessing
targetObjectURI
	targetObjectURI isNil ifTrue: [targetObjectURI := 'http://api.google.com/search/beta2'].
	^targetObjectURI