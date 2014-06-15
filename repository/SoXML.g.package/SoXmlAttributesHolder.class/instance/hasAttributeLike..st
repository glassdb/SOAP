actions
hasAttributeLike: aNameString 
	^ ((self otherDict keys detect: [:each | aNameString match: each] ifNone:[nil]) notNil)
		or: [(self namespaceDict keys detect: [:each | aNameString match: each] ifNone:[nil]) notNil]