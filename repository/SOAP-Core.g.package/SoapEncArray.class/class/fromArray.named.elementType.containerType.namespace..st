instance creation
fromArray: anArray named: elemName elementType: elementXSDType containerType: arrayXSDType namespace: namespaceURI
	| inst |
	inst := self new.
	^inst fromArray: anArray named: elemName elementType: elementXSDType containerType: arrayXSDType namespace: namespaceURI