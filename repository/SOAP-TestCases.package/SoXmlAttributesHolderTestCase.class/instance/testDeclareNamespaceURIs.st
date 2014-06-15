testing
testDeclareNamespaceURIs
	| attribsHolder |
	attribsHolder := SoXmlAttributesHolder new.
	attribsHolder declareNamespace: 'Foo1' uri: 'http://www.bar.org'.
	attribsHolder declareNamespace: 'Foo2' uri: 'http://www.baz.org'.
	
	self should: [(attribsHolder declaredNamespaceURIFor: 'Foo1') = 'http://www.bar.org'].
	self should: [(attribsHolder declaredNamespaceURIFor: 'Foo2') = 'http://www.baz.org'].