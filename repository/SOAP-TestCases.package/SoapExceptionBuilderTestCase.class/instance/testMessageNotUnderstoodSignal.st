testing
testMessageNotUnderstoodSignal
	
	| fault builder exception |
	fault := self messageNotUnderstoodFault.
	builder := SoapExceptionBuilder new.
	exception := builder buildExceptionFrom: fault.
	self should: [exception tag = '<<signaled in server>>'].
	self should: [exception messageText beginsWith:  'MessageNotUnderstood 2010'].
	self should:[exception signal] raise: MessageNotUnderstood.