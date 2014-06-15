private
registerTimeNow
	| impl serv |
	impl := self new.
	serv := SoapService implementor: impl selector: #timeNow.
	serv setSignatureNamed: 'timeNow'.
	SoapServiceHandler default add: serv