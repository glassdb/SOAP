private
registerBrowseClassDefinition
	| impl serv |
	impl := self new.
	serv := SoapService implementor: impl selector: #browseClassDefinition:.
	serv setSignatureNamed: 'browseClassDefinition' paramNames: #(className).
	SoapServiceHandler default add: serv