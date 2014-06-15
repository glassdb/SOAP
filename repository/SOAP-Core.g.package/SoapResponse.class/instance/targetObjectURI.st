accessing
targetObjectURI
	targetObjectURI isNil ifTrue: [targetObjectURI := self context targetObjectURI ].
	^targetObjectURI