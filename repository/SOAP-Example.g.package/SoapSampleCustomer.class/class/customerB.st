sample instances
customerB
	| cust |
	cust := self new.
	cust name: 'Mike'.
	cust age: 26.
	cust dateOfBirth: (DateAndTime fromString: '1980-10-20T00:00:00-07:00').
	^cust