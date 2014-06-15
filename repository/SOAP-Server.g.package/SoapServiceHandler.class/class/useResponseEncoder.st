accessing
useResponseEncoder
	useResponseEncoder isNil ifTrue: [useResponseEncoder := false].
	^useResponseEncoder