private
buildDoSpellingSuggestion
	| call |
	call := self newCall.
	call methodName: 'doSpellingSuggestion'.
	call addParameterNamed: #key.
	call addParameterNamed: #phrase.
	^call