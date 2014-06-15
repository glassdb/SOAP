utility
withColon: aString
	| wStr |
	wStr := WriteStream on: (String new: aString size).
	wStr nextPutAll: aString.
	wStr nextPut: $:.
	^wStr contents.