actions
convertString: aString from: encoderName

	encoderName = 'utf-8' ifFalse: [ ^self error: 'Unsupported encoding: ', encoderName printString ].
	^UTF8Encoding newEncoder decode: aString