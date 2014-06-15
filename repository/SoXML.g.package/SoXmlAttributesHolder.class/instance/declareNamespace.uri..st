actions
declareNamespace: prefix uri: uri 
	prefix isEmpty
		ifTrue: [self namespaceDict at: SoXmlConstants xmlnsPrefix , prefix put: uri]
		ifFalse: [self namespaceDict at: SoXmlConstants xmlnsPrefixColon , prefix put: uri]