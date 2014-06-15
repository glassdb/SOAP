actions
arrayItemType
	| arrType |
	arrType := self arrayType.
	^arrType isNil
		ifTrue: [(SoapConstants xsdAnyType)]
		ifFalse: [| end | 
			end := arrType findString: '[' startingAt: 1.
			(arrType copyFrom: 1 to: end - 1) ]