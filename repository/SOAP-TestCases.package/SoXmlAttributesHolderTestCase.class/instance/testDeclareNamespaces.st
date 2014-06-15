testing
testDeclareNamespaces
	| attribsHolder |
	attribsHolder := SoXmlAttributesHolder new.
	attribsHolder declareNamespace: 'Foo1' uri: 'http://www.bar.org'.
	attribsHolder declareNamespace: 'Foo2' uri: 'http://www.baz.org'.
	self should: [attribsHolder declaredNamespacePrefixes asSortedCollection asArray = #('Foo1' 'Foo2')].