actions
substringsFrom: aString 
	"ToDo: Support other Smalltalks"
	"##Squeak specific##"
	aString isNil ifTrue: [^#()].
	^ aString substrings