actions
elementValueFrom: aParsedXMLElement
	"assuming Yax"
	| cData |
	cData := aParsedXMLElement characterData.
	^cData isEmpty ifTrue: [nil] ifFalse: [cData]