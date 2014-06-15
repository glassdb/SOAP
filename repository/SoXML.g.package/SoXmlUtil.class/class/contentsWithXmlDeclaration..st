actions
contentsWithXmlDeclaration: aString 
	| wStr |
	wStr := WriteStream on: (String new).
	wStr nextPutAll: '<?xml version="1.0" encoding="' , self stringEncoding, '"?>'.
	2 timesRepeat: [wStr nextPut: Character cr.
			wStr nextPut: Character lf].
	wStr nextPutAll: aString.
	2 timesRepeat: [wStr nextPut: Character cr.
			wStr nextPut: Character lf].
	^SoPortableUtil portableSubclass convertString: wStr contents to: self stringEncoding.