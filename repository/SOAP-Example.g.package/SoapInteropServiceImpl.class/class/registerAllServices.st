registering
registerAllServices
	"self registerAllServices.
	 (Delay forMilliseconds: 100) wait."

	| impl serv |
	SoapServerSetup startAll.

	impl := self new.
	serv := SoapService implementor: impl selector: #raiseMNU.
	serv setSignatureNamed: 'raiseMNU'.
	SoapServiceHandler default add: serv.
	
	impl := self new.
	serv := SoapService implementor: impl selector: #echoVoid.
	serv setSignatureNamed: 'echoVoid'.
	SoapServiceHandler default add: serv.
	impl := self new.
	serv := SoapService implementor: impl selector: #echoString:.
	serv setSignatureNamed: 'echoString' paramNames: #(inputString).
	SoapServiceHandler default add: serv.
	impl := self new.
	serv := SoapService implementor: impl selector: #echoStringArray:.
	serv setSignatureNamed: 'echoStringArray' paramNames: #(inputStringArray).
	SoapServiceHandler default add: serv.
	impl := self new.
	serv := SoapService implementor: impl selector: #echoStruct:.
	serv setSignatureNamed: 'echoStruct' paramNames: #(inputStruct).
	SoapServiceHandler default add: serv.
	impl := self new.
	serv := SoapService implementor: impl selector: #echoStructArray:.
	serv setSignatureNamed: 'echoStructArray' paramNames: #(inputStructArray).
	SoapServiceHandler default add: serv.
	impl := self new.
	serv := SoapService implementor: impl selector: #echoFloat:.
	serv setSignatureNamed: 'echoFloat' paramNames: #(inputFloat).
	SoapServiceHandler default add: serv.
	impl := self new.
	serv := SoapService implementor: impl selector: #echoFloatArray:.
	serv setSignatureNamed: 'echoFloatArray' paramNames: #(inputFloatArray).
	SoapServiceHandler default add: serv.
	impl := self new.
	serv := SoapService implementor: impl selector: #echoBoolean:.
	serv setSignatureNamed: 'echoBoolean' paramNames: #(inputBoolean).
	SoapServiceHandler default add: serv.
	impl := self new.
	serv := SoapService implementor: impl selector: #echoBase64:.
	serv setSignatureNamed: 'echoBase64' paramNames: #(inputBase64).
	SoapServiceHandler default add: serv.
	impl := self new.
	serv := SoapService implementor: impl selector: #echoInteger:.
	serv setSignatureNamed: 'echoInteger' paramNames: #(inputInteger).
	SoapServiceHandler default add: serv.
	impl := self new.
	serv := SoapService implementor: impl selector: #echoIntegerArray:.
	serv setSignatureNamed: 'echoIntegerArray' paramNames: #(inputIntegerArray).
	SoapServiceHandler default add: serv.