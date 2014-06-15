actions
declaredNamespacePrefixes
	^ self namespaceDict keys
		collect: [:each | each = SoXmlConstants xmlnsPrefix
				ifTrue: ['']
				ifFalse: [each copyFrom: SoXmlConstants xmlnsPrefixColon size + 1 to: each size]]