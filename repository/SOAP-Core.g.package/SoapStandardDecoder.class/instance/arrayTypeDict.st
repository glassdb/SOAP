accessing
arrayTypeDict
	"Answer the value of arrayTypeDict"
	arrayTypeDict ifNil: [arrayTypeDict := self class arrayTypeDict].
	^ arrayTypeDict