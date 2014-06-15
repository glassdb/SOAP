actions
prefixAndLocalNameFrom: aString 
	| index readStream prefixName localName |
	index := aString indexOf: $:.
	index = 0
		ifTrue: [prefixName := ''.
			localName := aString]
		ifFalse: [readStream := aString readStream.
			prefixName := readStream next: index - 1.
			readStream skip: 1.
			localName := readStream next: aString size - index].
	^ Array with: prefixName with: localName