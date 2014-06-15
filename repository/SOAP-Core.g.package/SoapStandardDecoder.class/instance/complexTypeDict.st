accessing
complexTypeDict
	"Answer the value of complexTypeDict"
	complexTypeDict ifNil: [complexTypeDict := self class complexTypeDict].
	^ complexTypeDict