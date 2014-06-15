accessing
target: anObject
	"Set the value of target"
	| str |
	str := anObject asString.
	str ifEmpty: [^nil].
	str := str copyFrom: 2 to: str size. "removing #"
	target := str