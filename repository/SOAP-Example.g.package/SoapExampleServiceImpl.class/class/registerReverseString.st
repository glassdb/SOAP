private
registerReverseString
	| impl serv |
	impl := self new.
	serv := SoapService implementor: impl selector: #reverseString:.
	serv setSignatureNamed: 'reverseString' paramNames: #(aString).
	SoapServiceHandler default add: serv