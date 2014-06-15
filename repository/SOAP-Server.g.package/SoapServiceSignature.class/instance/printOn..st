printing
printOn: aStream 
	aStream print: self name.
	aStream nextPutAll: ' ( '.
	aStream print: self paramNames.
	aStream nextPutAll: ' ) '.
	self paramValues isEmpty
		ifFalse: [aStream nextPutAll: ' < '.
			aStream print: self paramValues.
			aStream nextPutAll: ' > ']