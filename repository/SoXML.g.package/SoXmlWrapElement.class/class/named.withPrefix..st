instance creation
named: anElemName withPrefix: prefix
	prefix ifEmpty: [^self named: anElemName].
	^self named: prefix, ':', anElemName