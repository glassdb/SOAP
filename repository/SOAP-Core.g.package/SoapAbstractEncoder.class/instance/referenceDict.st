accessing
referenceDict
	"subclass may use this for resolving shared values"
	referenceDict ifNil: [referenceDict := Dictionary new].
	^referenceDict