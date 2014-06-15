testing
testEncodeCustomStructTypeSharedInArray
	"self debug: #testEncodeCustomStructTypeSharedInArray"

	| enc cust cust2 elems elem first second third |
	enc := SoapEncoder new.
	cust := SoapSampleCustomer new.
	cust name: 'John'; age: 25; dateOfBirth: (DateAndTime fromString: '1980-11-22T00:00:00-07:00'); yourself.
	enc complexTypeDict at: #SoapSampleCustomer put: 'types:Customer'.

	cust2 := SoapSampleCustomer new.
	cust2 name: 'Taro'; age: 35; dateOfBirth: (DateAndTime fromString: '1970-11-22T00:00:00-07:00'); yourself.

	enc useSharedValues: true.
	elems := (SoapEncArray encoder: enc)
				fromArray: (Array with: cust with: cust2 with: cust )
				named: 'resultElements'
				elementType: 'ResultElement'.
	
	elem := enc encodeSoapVariable: (SoapVariable name: 'resultElements' value: elems).
	
	self should: [elem isArrayType].
	first := elem children first.
	self should: [first id notNil].
	self should: [(first findChildNamed: 'name') value = 'John']. 
	self should: [(first findChildNamed: 'age') value = '25']. 
	self should: [(first findChildNamed: 'dateOfBirth') value = '1980-11-22T00:00:00-07:00'].

	second := elem children second.
	self should: [second id isNil].
	self should: [(second findChildNamed: 'name') value = 'Taro']. 
	self should: [(second findChildNamed: 'age') value = '35']. 
	self should: [(second findChildNamed: 'dateOfBirth') value = '1970-11-22T00:00:00-07:00'].

	third := elem children third.
	self should: [third id isNil].
	self should: [third children isEmpty]. 
	self should: [ '#', first id asString = third href].