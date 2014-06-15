testing
testSimpleColocationCall
	"self debug: #testSimpleColocationCall"
	| call resp |
	
	SoapServerSetup startOnly: #(http).
	self waitAMoment.

	SoapServiceHandler default  add: self simpleAddService.
	call := SoapCallEntry local newCall.
	self should: [call useColocation == false].

	
	call methodName: 'add'.
	call addParameter: (SoapVariable name: #newElem value: 1).
	
	resp := call invoke.
	self shouldnt:[resp isFault].
	self should:[resp returnValue = 1].
	
	self should: [call transport == #http ].

	self should: [call colocated].

	call useColocation: true.

	resp := call invoke.
	self shouldnt:[resp isFault].
	self should:[resp returnValue = 1].

	self should: [call transport == #http ].
	self should: [call connector isKindOf: SoapLocalRpcConnector ].
	
	SoapServiceHandler default remove: self simpleAddService.