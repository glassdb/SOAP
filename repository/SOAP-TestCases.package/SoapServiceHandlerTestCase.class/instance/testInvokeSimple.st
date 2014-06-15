testing
testInvokeSimple
	| handler ret |
	handler := SoapServiceHandler new.
	handler add: self simpleService.
	ret := handler invoke: self simpleEnvelope with: self simpleContext.
	
	self should:[ret = '1'].