actions
createParentNamed: anElemName
	| pa |
	pa := self class named: anElemName.
	pa addChild: self.
	^pa