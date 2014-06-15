fixtures
simpleService
	| ord serv |
	ord := OrderedCollection new.
	serv := SoapService implementor: ord selector: #add:.
	serv signature: (SoapServiceSignature name: 'add' paramNames: #(newElem)).
	serv targetObjectURI: self defaultTargetObjectURI.
	^serv