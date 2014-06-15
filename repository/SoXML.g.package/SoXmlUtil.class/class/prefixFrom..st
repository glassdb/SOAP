actions
prefixFrom: aString 
	aString ifNil: [^nil].
	^(self prefixAndLocalNameFrom: aString) first