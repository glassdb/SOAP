private
safeBecomeForward: anObject

	anObject == true ifTrue: [^anObject].
	anObject == false ifTrue: [^anObject].
	anObject isNumber ifTrue: [^anObject].
	anObject class isBytesOrSpecial ifTrue: [^anObject].
	anObject class isVariable ifTrue: [^anObject].

	"GemStone has no #becomeForward:"
	self become: anObject.
	^self