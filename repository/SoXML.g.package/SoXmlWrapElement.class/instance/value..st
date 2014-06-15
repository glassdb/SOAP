accessing
value: aValue 
	aValue isNil
		ifTrue: [^ self].
	value := aValue asString