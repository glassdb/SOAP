private
buildDoGetCachedPage
	| call |
	call := self newCall.
	call methodName: 'doGetCachedPage'.
	call addParameterNamed: #key.
	call addParameterNamed: #url.
	^call