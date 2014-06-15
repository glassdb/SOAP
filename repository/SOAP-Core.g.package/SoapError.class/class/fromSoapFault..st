instance creation
fromSoapFault: aSoapFault
	| inst |
	inst := self faultcode: aSoapFault faultcode.
	inst faultstring: aSoapFault faultstring.
	inst detail: aSoapFault detail.
	^inst