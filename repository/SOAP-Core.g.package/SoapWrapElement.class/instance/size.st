actions
size
	| arrType |
	arrType := self arrayType.
	^arrType isNil
		ifTrue: [self children size]
		ifFalse: [| start | 
			start := arrType findString: '[' startingAt: 1.
			(arrType copyFrom: start + 1 to: arrType size - 1) asNumber]