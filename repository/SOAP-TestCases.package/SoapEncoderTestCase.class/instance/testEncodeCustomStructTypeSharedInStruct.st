testing
testEncodeCustomStructTypeSharedInStruct
	"self debug: #testEncodeCustomStructTypeSharedInStruct"

	| enc cust cust2 elem struct1 a b c |
	enc := SoapEncoder new.
	cust := SoapSampleCustomer new.
	cust name: 'John'; age: 25; dateOfBirth: (DateAndTime fromString: '1980-11-22T00:00:00-07:00'); yourself.
	enc complexTypeDict at: #SoapSampleCustomer put: 'types:Customer'.

	cust2 := SoapSampleCustomer new.
	cust2 name: 'Taro'; age: 35; dateOfBirth: (DateAndTime fromString: '1970-11-22T00:00:00-07:00'); yourself.

	struct1 := SoapEncStruct fromAssociations:  {#a->cust. #b->cust2. #c->cust2.}.
	enc useSharedValues: true.
	elem := enc encodeSoapVariable: (SoapVariable name: 'resultElements' value: struct1).
	
	self should: [elem name =  'resultElements'].
	a := elem findChildNamed: 'a'.
	self should: [a id isNil].
	self should: [(a findChildNamed: 'name') value = 'John']. 
	self should: [(a findChildNamed: 'age') value = '25']. 
	self should: [(a findChildNamed: 'dateOfBirth') value = '1980-11-22T00:00:00-07:00']. 

	b := elem findChildNamed: 'b'.
	self should: [b id notNil].
	self should: [(b findChildNamed: 'name') value = 'Taro']. 
	self should: [(b findChildNamed: 'age') value = '35']. 
	self should: [(b findChildNamed: 'dateOfBirth') value = '1970-11-22T00:00:00-07:00']. 
	
	c := elem findChildNamed: 'c'.
	self should: [c id isNil].
	self should: [c children isEmpty]. 
	self should: ['#', b id asString = c href].