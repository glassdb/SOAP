private
writeUnicodeChar: aCharacter code: charCode on: aWriteStream 
	self useNcr
		ifTrue: [aWriteStream nextPutAll: '&#';
				 nextPutAll: charCode asString;
				 nextPut: $;]
		ifFalse: [aWriteStream nextPut: aCharacter]