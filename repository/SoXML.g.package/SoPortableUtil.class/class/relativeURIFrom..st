actions
relativeURIFrom: aString 
	"SoPortableUtil relativeURIFrom: 'urn:target:1' "
	"SoPortableUtil relativeURIFrom: 'http://localhost:80/target/1' "
	"SoPortableUtil relativeURIFrom: '/target1/' "
	"SoPortableUtil relativeURIFrom: 'target1' "
	"SoPortableUtil relativeURIFrom: '/' "

	"##Squeak specific##"
	| uriStr colonIdx schemeName slashIdx |
	aString isEmpty ifTrue: [^aString].
	uriStr := aString last = $/
				ifTrue: [aString copyFrom: 1 to: aString size - 1]
				ifFalse: [aString].
	colonIdx := uriStr
				indexOf: $:
				ifAbsent: [^(uriStr beginsWith: '/') ifTrue: [uriStr] ifFalse: ['/', uriStr]].
	schemeName := aString copyFrom: 1 to: colonIdx - 1.
	(schemeName
			allSatisfy: [:each | each isLetter])
		ifTrue: [uriStr := uriStr copyFrom: colonIdx + 1 to: uriStr size].
	((uriStr at: 1)
				= $/
			and: [(uriStr at: 2)
					= $/])
		ifTrue: [uriStr := uriStr copyFrom: 2 to: uriStr size].
	slashIdx := uriStr findString: '/' startingAt: 2.
	slashIdx = 0
		ifFalse: [uriStr := uriStr copyFrom: slashIdx to: uriStr size].
	^ uriStr