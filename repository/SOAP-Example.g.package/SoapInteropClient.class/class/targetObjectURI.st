accessing
targetObjectURI
	targetObjectURI isNil ifTrue: [targetObjectURI := self defaultURI].
	^targetObjectURI