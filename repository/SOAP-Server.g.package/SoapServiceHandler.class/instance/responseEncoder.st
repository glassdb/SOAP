accessing
responseEncoder
	responseEncoder isNil ifTrue:[responseEncoder := self class defaultResponseEncoder].
	^responseEncoder