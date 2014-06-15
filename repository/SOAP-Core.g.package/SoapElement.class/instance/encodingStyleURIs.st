actions
encodingStyleURIs
	"ToDo: take a more serious approach...Namespace conscious"
	| encs |
	encs := self attributesHolder encodingStyle.
	self parent notNil
		ifTrue: [| parentEncodeingURIs myURIs | 
			parentEncodeingURIs := self parent encodingStyleURIs.
			myURIs := SoPortableUtil portableSubclass  substringsFrom: encs.
			^ (parentEncodeingURIs ~= myURIs and: [myURIs notEmpty])
				ifTrue: [myURIs]
				ifFalse: [parentEncodeingURIs]].
	^ SoPortableUtil portableSubclass  substringsFrom: encs