actions
isPrefixedName: aString
	"self isPrefixedName: 'aaa:bbb'"
	aString ifNil: [^false].
	^aString includes: $: