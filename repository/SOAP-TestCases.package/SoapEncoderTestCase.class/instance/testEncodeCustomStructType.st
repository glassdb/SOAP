testing
testEncodeCustomStructType
	"self debug: #testEncodeCustomStructType"

	| enc cust elem elem2 |
	enc := SoapEncoder new.
	enc useSharedValues: false.
	cust := SoapSampleCustomer new.
	cust name: 'John'; age: 25; dateOfBirth: (DateAndTime fromString: '1980-11-22T00:00:00-07:00'); yourself.
	enc complexTypeDict at: #SoapSampleCustomer put: 'types:Customer'.
	elem := enc encodeSoapVariable: (SoapVariable name: 'customer' value: cust).
	
	self should: [elem name = 'customer'].
	"self should: [elem xsiType isNil]."
	self should: [elem xsiType = 'types:Customer'].
	self should: [(elem findChildNamed: 'name') value = 'John'].
	self should: [(elem findChildNamed: 'age') value = '25'].
	self should: [(elem findChildNamed: 'dateOfBirth') value = '1980-11-22T00:00:00-07:00'].

	elem2 := enc encodeSoapVariable: (SoapVariable name: 'customer' value: cust xsdType: (enc complexXsdTypeOf: cust)).
	self should: [elem2 name = 'customer'].
	self should: [elem2 xsiType = 'types:Customer'].
	self should: [(elem2 findChildNamed: 'name') value = 'John'].
	self should: [(elem2 findChildNamed: 'age') value = '25'].
	self should: [(elem2 findChildNamed: 'dateOfBirth') value = '1980-11-22T00:00:00-07:00'].