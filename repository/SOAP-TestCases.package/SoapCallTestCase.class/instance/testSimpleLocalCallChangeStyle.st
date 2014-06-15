testing
testSimpleLocalCallChangeStyle
	"SoapCallTestCase debug: #testSimpleLocalCallChangeStyle"

	"Currently, SoapCore server does not support document type binding, So, this tests client side only"
	| call resp |
	call := SoapCallEntry local newCall.
	call transport: #localRpc.
	call methodName: 'sendDocument'.
	call addParameter: (SoapVariable name: #sendDocument value: 'some doc').
	call style: #document.
	resp := call invoke.
	
	self should:[resp isFault].
	self should:[resp style = #document].