accessing
host
	host isNil ifTrue: [host := self defaultHost].
	^host