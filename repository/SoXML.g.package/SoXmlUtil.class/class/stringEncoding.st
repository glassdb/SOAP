accessing
stringEncoding
	stringEncoding ifNil: [stringEncoding := 'utf-8'].
	^stringEncoding