accessing
doGetCachedPage
	doGetCachedPage isNil ifTrue: [doGetCachedPage := self buildDoGetCachedPage].
	^doGetCachedPage