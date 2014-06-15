printing
printXmlOn: aStream
	self namespaceDict keysAndValuesDo:[ :k :v |
		aStream nextPut: Character space.
		self writeName: k on: aStream.
		aStream nextPutAll: '="'.
		self writeValue: v asString on: aStream.
		aStream nextPut: $".
	].
	self otherDict keysAndValuesDo:[ :k :v |
		aStream nextPut: Character space.
		self writeName: k on: aStream.
		aStream nextPutAll: '="'.
		self writeValue: v asString on: aStream.
		aStream nextPut: $".
	]