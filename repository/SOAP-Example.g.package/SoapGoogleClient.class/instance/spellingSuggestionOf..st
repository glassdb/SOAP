actions
spellingSuggestionOf: phrase
	| params resp |
	params := OrderedCollection with: self licenseKey.
	params add: phrase.
	resp := self doSpellingSuggestion invokeWithValues: params.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [resp returnValue]