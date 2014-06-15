actions
createChildNamed: anElemName
	| child |
	child := self class named: anElemName.
	self addChild: child.
	^child