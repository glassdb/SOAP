actions-invoking
invoke
	| returnedMsg resp | 
	self autoSoapActionIntent ifTrue: [self generateSoapActionIntent].
	self optionHeaderProperties keysAndValuesDo:[:k :v | self context at: k put: v].
	returnedMsg := self connector send: self buildEnvelope to: self locator with: self context.
	resp := SoapResponse fromSoapMessage: returnedMsg.
	resp style: self style.
	self clear.
	^resp