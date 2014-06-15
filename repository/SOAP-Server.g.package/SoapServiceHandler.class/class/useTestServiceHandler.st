accessing
useTestServiceHandler
	useTestServiceHandler isNil ifTrue:[useTestServiceHandler := false].
	^useTestServiceHandler