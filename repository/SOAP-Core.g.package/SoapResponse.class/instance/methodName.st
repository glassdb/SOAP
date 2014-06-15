accessing
methodName
	(self isFault not
			and: [methodName isNil])
		ifTrue: [methodName := self envelope body bodyEntries first name copyReplaceAll: 'Responce' with: ''].
	^ methodName