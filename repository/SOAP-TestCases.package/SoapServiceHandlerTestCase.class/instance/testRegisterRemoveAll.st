testing
testRegisterRemoveAll
	"self debug: #testRegisterAll"
	| mockImpl services |
	mockImpl := SoapMockServiceImpl new.
	SoapServiceHandler registerAllIn: mockImpl.

	services := SoapServiceHandler default selectServices: [:each | each implementor = mockImpl].
	self should: [services size = 3].

	self should: [services anySatisfy: [:each | each selector = #doSomething:]].
	self should: [services anySatisfy: [:each | each selector = #doSomething:with:]].
	self should: [services anySatisfy: [:each | each selector = #doSomething:with:with:]].
	
	SoapServiceHandler removeAllIn: mockImpl.
	services := SoapServiceHandler default selectServices: [:each | each implementor = mockImpl].
	self should: [services size = 0].