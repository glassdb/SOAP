accessing
children
	children isNil ifTrue:[ children := OrderedCollection new].
	^children