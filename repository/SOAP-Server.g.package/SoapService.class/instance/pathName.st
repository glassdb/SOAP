actions
pathName
	"##currently just ignore namespace##"
	^ self targetObjectURI isEmpty
		ifTrue: [self name]
		ifFalse: [self targetObjectURI , ':' , self name]