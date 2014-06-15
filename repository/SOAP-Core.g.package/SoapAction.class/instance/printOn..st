printing
printOn: aStream
	aStream nextPutAll: self headerString, ': '.
	aStream nextPutAll: self intentString.
	aStream nextPut: Character cr.
	aStream nextPut: Character lf.