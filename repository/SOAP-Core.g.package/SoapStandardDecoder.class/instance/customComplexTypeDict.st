accessing
customComplexTypeDict
	"Answer the value of customComplexTypeDict"
	customComplexTypeDict ifNil: [customComplexTypeDict := self class customComplexTypeDict].
	^ customComplexTypeDict