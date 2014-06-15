sample instances
customerA
	| cust |
	cust := self new.
	cust name: 'Masashi'.
	cust age: 36.
	cust dateOfBirth: (DateAndTime fromString: '1970-11-22T00:00:00-07:00').
	^cust