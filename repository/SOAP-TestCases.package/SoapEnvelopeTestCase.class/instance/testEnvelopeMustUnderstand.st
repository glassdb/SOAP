testing
testEnvelopeMustUnderstand
	| env |
	env := SoapEnvelope new.
	self should: [env body isMustUnderstandEnabled].
	env addHeader.
	env header disableMustUnderstand.
	self shouldnt: [env body isMustUnderstandEnabled].