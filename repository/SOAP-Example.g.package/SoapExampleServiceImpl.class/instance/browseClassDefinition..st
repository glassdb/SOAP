actions
browseClassDefinition: aClassName
	
	| stream targetClass |
	stream := WriteStream on: (String new: 1024).
	targetClass := self class environment at: aClassName asSymbol.
	targetClass fileOutOn: (stream).
	^stream contents asByteArray