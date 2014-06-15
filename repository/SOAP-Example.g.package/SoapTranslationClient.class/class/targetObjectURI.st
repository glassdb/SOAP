accessing
targetObjectURI
	targetObjectURI isNil ifTrue: [targetObjectURI := '/TranslateService.asmx'].
	^targetObjectURI