actions
declaredNamespaceURIFor: prefix ifAbsent: aBlock
	
	^self namespaceDict at: (SoXmlConstants xmlnsPrefixColon, prefix) ifAbsent: [
		self namespaceDict at: (SoXmlConstants xmlnsPrefix) ifAbsent: aBlock
	]