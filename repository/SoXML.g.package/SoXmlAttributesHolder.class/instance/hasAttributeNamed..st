actions
hasAttributeNamed: aNameString 
	^ (self otherDict includesKey: aNameString)
		or: [self namespaceDict includesKey: aNameString]