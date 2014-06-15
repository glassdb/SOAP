actions
writeXmlText: aString on: aWriteStream
	| cDict wStr contentStr |
	cDict := self convertCharDict.
	wStr := aWriteStream.
	contentStr := aString asString.
	contentStr
		do: [:eachChar | 
			| val | 
			val := eachChar asInteger.
			val >= 127
				ifTrue: [self writeUnicodeChar: eachChar code: val on: wStr ]
				ifFalse: [| conv | 
					conv := cDict
								at: val
								ifAbsent: [].
					conv isNil
						ifTrue: [wStr nextPut: eachChar]
						ifFalse: [wStr nextPutAll: conv]]].
	^wStr