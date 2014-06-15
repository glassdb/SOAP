printing
printXmlString
	| stream |
	stream := WriteStream on: (String new).
	self printOn: stream.
	^stream contents.