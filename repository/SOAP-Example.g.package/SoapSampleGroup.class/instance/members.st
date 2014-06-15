accessing
members
	"Answer the value of members"
	members ifNil: [members := OrderedCollection new].
	^ members