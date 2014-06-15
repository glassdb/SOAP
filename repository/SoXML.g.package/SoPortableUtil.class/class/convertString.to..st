actions
convertString: aString to: encoderName

	encoderName = 'utf-8' ifFalse: [ ^self error: 'Unsupported encoding: ', encoderName printString ].
	^UTF8Encoding newEncoder encode: aString