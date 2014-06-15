actions
getAttributeLike: aNameString 
	| key |
	key := (self otherDict keys detect: [:each | aNameString match: each] ifNone:[] ).
	key isNil ifTrue: [key := self namespaceDict keys detect: [:each | aNameString match: each] ifNone:[]].
	^self getAttributeNamed: key