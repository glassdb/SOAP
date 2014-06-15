printing
printOn: aStream
	aStream nextPutAll: 'a ', self class name.
	aStream nextPutAll: ' ['.
	aStream nextPutAll: ' isFault= ', self isFault printString.
	aStream nextPutAll: ' methodName= ', self methodName printString.
	aStream nextPutAll: ' ]'.