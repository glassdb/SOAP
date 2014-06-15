actions
getAttributeNamed: aNameString 
	^ self otherDict
		at: aNameString
		ifAbsent: [self namespaceDict
				at: aNameString
				ifAbsent: []]