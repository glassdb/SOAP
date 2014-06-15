accessing
handler
	handler isNil ifTrue: [ handler := self defaultHandler ].
	^handler