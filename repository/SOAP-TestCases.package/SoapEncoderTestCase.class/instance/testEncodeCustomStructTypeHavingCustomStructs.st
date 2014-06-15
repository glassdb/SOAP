testing
testEncodeCustomStructTypeHavingCustomStructs
	"self debug: #testEncodeCustomStructTypeHavingCustomStructs"

	| enc group elem members memA memB |
	enc := SoapEncoder new.
	group := SoapSampleGroup groupA.
	enc complexTypeDict at: #SoapSampleGroup put: 'types:Group'.
	enc complexTypeDict at: #SoapSampleCustomer put: 'types:Customer'.

	enc useSharedValues: true.
	elem := enc encodeSoapVariable: (SoapVariable name: 'group' value: group).
	
	self should: [elem name =  'group'].
	self should: [(elem findChildNamed: 'name') value =  'Squeak support'].
	members := (elem findChildNamed: 'members').

	self should: [members xsiType isNil].
	self should: [members arrayItemType = 'types:Customer'].

	self should: [members size = 2].
	memA := members children first.
	self should: [memA name = 'item'].
	self should: [memA xsiType = 'types:Customer'].
	self should: [(memA findChildNamed: 'name') value = 'Masashi']. 
	self should: [(memA findChildNamed: 'age') value = '36']. 
	self should: [(memA findChildNamed: 'dateOfBirth') value = '1970-11-22T00:00:00-07:00'].

	memB := members children second.
	self should: [memB name = 'item' ].
	self should: [memB xsiType = 'types:Customer'].
	self should: [(memB findChildNamed: 'name') value = 'Mike']. 
	self should: [(memB findChildNamed: 'age') value = '26']. 
	self should: [(memB findChildNamed: 'dateOfBirth') value = '1980-10-20T00:00:00-07:00'].