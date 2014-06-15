actions
allDeclaredNamespaceURIFor: prefix 
	^ self attributesHolder
		declaredNamespaceURIFor: prefix
		ifAbsent: [self parent notNil
				ifTrue: [self parent declaredNamespaceURIFor: prefix]]