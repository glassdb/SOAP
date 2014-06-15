private
safeBecomeForward: anObject

	anObject == true ifTrue: [^anObject].
	anObject == false ifTrue: [^anObject].
	anObject isNumber ifTrue: [^anObject].
	"anObject class isBits ifTrue: [^anObject]."
	anObject class isVariable ifTrue: [^anObject].

	self error: 'becomeForward: not supported'.
	"self becomeForward: anObject."
	^self