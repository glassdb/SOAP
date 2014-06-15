actions
intentString
	| headerStream |
	self intent
		ifNil: [^ String new].
	headerStream := WriteStream on: String new.
	headerStream nextPut: $".
	headerStream nextPutAll: self intent.
	headerStream nextPut: $".
	^ headerStream contents