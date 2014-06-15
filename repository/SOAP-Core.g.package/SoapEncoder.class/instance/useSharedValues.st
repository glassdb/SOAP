accessing
useSharedValues
	"Answer the value of useSharedValues"
	useSharedValues ifNil: [useSharedValues := self class useSharedValues].
	^ useSharedValues