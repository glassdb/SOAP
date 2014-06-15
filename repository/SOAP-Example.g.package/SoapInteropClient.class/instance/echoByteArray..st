actions
echoByteArray: ba

	| call resp |
	call := self newCall.
	call methodName: 'echoBase64'.
	call
		addParameterNamed: #inputBase64 value: ba.
	resp := call invoke.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [ | ret |
			ret := resp returnValue.
			(ret isKindOf: CharacterCollection)
				ifTrue: [ (Base64MimeConverter mimeDecodeToBytes: ret readStream) contents asByteArray]
				ifFalse: [ ret ]]