fixtures
referenceUsingService
	| impl serv |
	impl := SoapMockServiceImplForReferenceUsing new.
	serv := SoapService implementor: impl selector: #getAvailableLockers:postCode:.
	serv setSignatureNamed: 'getAvailableLockers' paramNames: #(clientTag postCode).
	serv targetObjectURI: self defaultTargetObjectURI.
	^serv