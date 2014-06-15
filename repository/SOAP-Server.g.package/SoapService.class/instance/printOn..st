printing
printOn: aStream
	aStream nextPutAll: 'aSoapService{ '.
	self signature isNil ifFalse: [aStream nextPutAll: 'signature: ', self signature printString].
	self targetObjectURI isEmpty ifFalse: [aStream nextPutAll: ' targetObjectURI: ', self targetObjectURI printString].
	self implementor isNil ifFalse: [aStream nextPutAll: ' implementor: ', self implementor printString].
	self selector isNil ifFalse: [aStream nextPutAll: ' selector: ', self selector printString].
	aStream nextPutAll: '} '.