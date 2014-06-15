testing
testDefaultTypesDecodeIsSafe
	"self debug: #testDefaultTypesDecodeIsSafe"
	| classes |
	classes := SoapDecoder typeDict values asSet collect: [:each | Smalltalk at: each].
	
	classes do: [:each | | inst |
		inst :=  [Integer readFrom: '1+2*3'] on: Error do: [:ex | ex. "Handled"].
		
		(each isKindOf: Number) 
			ifTrue: [self assert: ((inst = 0) or: [inst isKindOf: Error])]
		 	ifFalse: [self assert: ((inst isKindOf: each) or: [inst isKindOf: Error])].

		self deny: inst = 9
	]