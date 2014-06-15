testing
testInvole
	
	| ord serv |
	ord := OrderedCollection new.
	serv := SoapService  implementor: ord selector: #add:.
	serv signature: (SoapServiceSignature name: 'add' paramNames: #(newObject)).
	serv invoke: ((SoapServiceSignature name: 'add' paramNames: #(newObject)) valueAt: #newObject put: #bar).
	self should: [ord size = 1].
	self should:[ord first = #bar]