actions
encodingStyleURIs
	"ToDo: take a more serious approach...Namespace conscious"
	| encs |
	encs := self attributesHolder encodingStyle.
	((encs isNil	or: [encs isEmpty]) and: [self parent notNil])
		ifTrue: [^ self parent encodingStyleURIs].
	^ SoPortableUtil portableSubclass substringsFrom: encs