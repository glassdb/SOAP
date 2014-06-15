printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: ${.
	self propDict keysAndValuesDo:[:k :v | aStream print: k; nextPutAll: '->'; print: v; space].
	aStream nextPut: $}.