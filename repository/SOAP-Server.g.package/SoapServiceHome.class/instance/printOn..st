printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' { '.
	objectDict keysAndValuesDo:[:key :value |
		 aStream cr; tab; print: key; nextPutAll: '->'; print: value].
	aStream nextPutAll: ' } '.