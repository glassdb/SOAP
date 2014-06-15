accessing
doSpellingSuggestion
	doSpellingSuggestion isNil ifTrue: [doSpellingSuggestion := self buildDoSpellingSuggestion].
	^doSpellingSuggestion