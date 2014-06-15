actions
becomeReal
	(realObject isNil) ifFalse: [^self safeBecomeForward: realObject].
	^self