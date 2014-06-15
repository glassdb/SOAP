setting
resolveTimeout
	resolveTimeout isNil ifTrue: [resolveTimeout := 20].
	^resolveTimeout