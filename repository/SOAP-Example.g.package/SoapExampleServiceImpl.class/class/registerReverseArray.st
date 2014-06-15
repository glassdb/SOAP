private
registerReverseArray
	| impl serv |
	impl := self new.
	serv := SoapService implementor: impl selector: #reverseArray:.
	serv setSignatureNamed: 'reverseArray' paramNames: #(anArray).
	SoapServiceHandler default add: serv