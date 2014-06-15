actions
guessedPrefix
	| xp p |
	^ (xp := self xsdPrefix) isEmptyOrNil
		ifTrue: [p := self prefix.
			p ifEmpty: [^ nil].
			p]
		ifFalse: [xp]