testing
testInvoleFail
	| ord serv |
	ord := OrderedCollection new.
	serv := SoapService implementor: ord selector: #add:.
	serv
		signature: (SoapServiceSignature name: 'add' paramNames: #(#newObject )).
	self
		should: [serv
				invoke: ((SoapServiceSignature name: 'auau' paramNames: #(#newObject ))
						valueAt: #newObject
						put: #bar)]
		raise: SoapNoSuchService