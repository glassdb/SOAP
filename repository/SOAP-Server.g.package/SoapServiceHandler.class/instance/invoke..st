private
invoke: aSoapEnvelope
	
	| service signature ret |
	service := self findService: aSoapEnvelope.
	signature := self createSignature: aSoapEnvelope.
	self class showLog ifTrue: [Transcript cr; show: '[service invoked@', Time now printString , '] ', service printString].
	ret := service invoke: signature.
	self class showLog ifTrue: [Transcript cr; show: '-> [return value] ', ret printString].
	^ret