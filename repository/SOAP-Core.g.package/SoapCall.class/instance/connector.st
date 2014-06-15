accessing
connector
	connector isNil ifTrue: [ connector := self createConnector].
	^connector