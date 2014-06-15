testing
testInvoleTwoArgs

	| dict serv regSig perSig |
	dict := Dictionary new.
	serv := SoapService implementor: dict selector: #at:put:.
	regSig := SoapServiceSignature name: 'at put'  paramNames: #(index value).
	serv signature: regSig.
	
	perSig := SoapServiceSignature name: 'at put' paramNames: #(index value).
	perSig valueAt: #index put: 1.
	perSig valueAt: #value put: #bar.
	serv invoke: perSig.
	
	self should: [dict includesKey: 1].
	self should:[(dict at: 1 ) = #bar]