actions
translate: aString by: translateMode 
	| mode |
	mode := translateMode asLowercase.
	mode := self modeMap
				at: mode
				ifAbsent: [self
						error: ('{1} is not supported' translated format: {mode})].
	^ self translateCall invokeAndReturnWithValues: {mode. aString}