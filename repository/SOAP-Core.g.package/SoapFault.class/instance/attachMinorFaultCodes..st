actions
attachMinorFaultCodes: aArrayOfString 
	| origFaultCode wStr |
	origFaultCode := self faultcode.
	wStr := WriteStream with: origFaultCode.
	aArrayOfString
		do: [:each | 
			wStr nextPut: $..
			wStr nextPutAll: each].
	^self faultcode: wStr contents