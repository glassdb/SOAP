testing
testDispatchError

	| handler env fault details |
	handler := SoapServiceHandler new. 
	handler add: self simpleService.
	env := self errorEnvelope.
	"self shouldnt:[env := handler dispatch: env with: self simpleContext.] raise: Error."
	env := handler dispatch: env with: self simpleContext.
	self assert:( env body hasFault).
	
	fault := env body fault.
	
	self should: [fault name = 'env:Fault'].
	self should: [fault faultcode =  'env:Client'].
	self should: ['*/OrderedCollection:adddd' match: fault faultstring ].
	
	details := fault detail subElements first.
	self should: [details shortName = 'details'].
	self should: [(details declaredNamespaceURIFor: SoapFaultDetailBuilder defaultPrefix)
				= SoapFaultDetailBuilder defaultNamespace].
	
	self should:[ (details findChildNamed: 'ErrorClass') value =  'SoapNoSuchService'].