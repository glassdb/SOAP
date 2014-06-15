private
registerReturnComplexDictionary
	| impl serv |
	impl := self new.
	serv := SoapService implementor: impl selector: #returnComplexDictionary:.
	serv setSignatureNamed: 'returnComplexDictionary' paramNames: #(aDictionary).
	SoapServiceHandler default add: serv