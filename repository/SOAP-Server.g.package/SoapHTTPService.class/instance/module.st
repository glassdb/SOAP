accessing
module
	module isNil ifTrue: [ module := self defaultModule].
	^module