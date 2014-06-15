constants
prepareModeMap
	modeMap := Dictionary new.
	self supportedModes
		do: [:each | 
			| key | 
			key := each asLowercase.
			modeMap at: key put: each].
	^ modeMap