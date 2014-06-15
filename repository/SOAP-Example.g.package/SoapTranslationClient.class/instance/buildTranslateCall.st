private
buildTranslateCall
	| call |
	call := self newCall.
	call methodName: 'Translate'.
	call addParameterNamed: #LanguageMode.
	call addParameterNamed: #Text.
	^call