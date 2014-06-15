testing
testInvoleInvalidParamName
	| ord serv |
	ord := OrderedCollection new.
	serv := SoapService implementor: ord selector: #add:.
	serv
		signature: (SoapServiceSignature name: 'add' paramNames: #(#newObject )).
	self
		should: [serv
				invoke: ((SoapServiceSignature name: 'add' paramNames: #(#newObject ))
						valueAt: #auauObject
						put: #bar)]
		raise: SoapInvalidParamName