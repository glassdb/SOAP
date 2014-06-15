actions
isBlank: aString 
	"##ANSI ST specific##"
	^(aString allSatisfy: [:i | i isSeparator])