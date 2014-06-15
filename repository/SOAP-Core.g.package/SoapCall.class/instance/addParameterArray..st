actions
addParameterArray: parameterArray
	"parameterArray -> {name. value(optional). xsdType(optional) }"
	| paramSize |
	paramSize := parameterArray size.
	paramSize = 1 ifTrue: [^self addParameterNamed: (parameterArray at: 1)].
	paramSize = 2 ifTrue: [^self addParameterNamed: (parameterArray at: 1) value: (parameterArray at: 2)].
	paramSize = 3 ifTrue: [^self addParameterNamed: (parameterArray at: 1) value: (parameterArray at: 2) xsdType: (parameterArray at: 3)].