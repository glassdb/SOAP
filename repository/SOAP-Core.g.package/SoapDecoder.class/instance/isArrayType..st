private
isArrayType: aSoapWrapElement 
	^(aSoapWrapElement isArrayType or: [self arrayTypeDict includesKey: aSoapWrapElement xsiType])
		or: [self arrayTypeDict includesKey: aSoapWrapElement shortName] "temporal hack"