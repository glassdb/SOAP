testing
testDeclareNamespacesAndPutAttributes
	| attribsHolder ansStr |
	attribsHolder := SoXmlAttributesHolder new.
	attribsHolder declareNamespace: 'Foo1' uri: 'http://www.bar.org'.
	attribsHolder putAttribute: #('key1' 'val1').
	ansStr := ' xmlns:Foo1="http://www.bar.org" key1="val1"'.
	self should: [ansStr = attribsHolder printString]