actions
putAttributeNamed: attribName value: attribValue 
	((attribName beginsWith: SoXmlConstants xmlnsPrefixColon) 
			or: [attribName = SoXmlConstants xmlnsPrefix])
		ifTrue: [self namespaceDict at: attribName put: attribValue]
		ifFalse: [self otherDict at: attribName put: attribValue]