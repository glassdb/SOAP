actions
localNameFrom: aString 
	aString ifNil: [^''].
	^(self prefixAndLocalNameFrom: aString) last