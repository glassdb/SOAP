testing
testSimpleLocalCall
	"self debug: #testSimpleLocalCall"
	| call resp |
	SoapServiceHandler default  add: self simpleAddService.
	call := SoapCallEntry local newCall.
	call transport: #localRpc.
	call methodName: 'add'.
	call addParameter: (SoapVariable name: #newElem value: 1).
	
	resp := call invoke.
	
	self shouldnt:[resp isFault].
	self should:[resp returnValue = 1].
	
	SoapServiceHandler default remove: self simpleAddService.