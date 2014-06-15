private
registerHelloWorld
	| impl serv |
	impl := self new.
	serv := SoapService implementor: impl selector: #helloWorld.
	serv setSignatureNamed: 'helloWorld'.
	SoapServiceHandler default add: serv