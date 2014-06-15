actions
send: soapEnvelopeOrSrting action: aSoapAction 
	| return |
	self soapAction: aSoapAction.
	return := self send: soapEnvelopeOrSrting.
	^SoPortableUtil convertString: return from: SoapSetting stringEncoding.