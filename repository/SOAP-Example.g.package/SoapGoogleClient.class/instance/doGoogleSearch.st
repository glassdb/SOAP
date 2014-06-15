accessing
doGoogleSearch
	doGoogleSearch isNil ifTrue: [doGoogleSearch := self buildDoGoogleSearch].
	^doGoogleSearch