testing
testInvokeSimpleWithXsdType
	| handler ret |
	handler := SoapServiceHandler new.
	handler add: self simpleService.
	ret := handler invoke: self simpleEnvelopeWithXsdType with: self simpleContext.
	
	self should:[ret = 1.02].