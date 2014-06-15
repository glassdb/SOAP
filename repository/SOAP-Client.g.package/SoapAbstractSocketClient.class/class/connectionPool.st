accessing
connectionPool
	connectionPool isNil ifTrue: [self initConnectionPool].
	^connectionPool