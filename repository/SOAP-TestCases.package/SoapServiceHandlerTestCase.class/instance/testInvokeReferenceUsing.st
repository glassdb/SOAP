testing
testInvokeReferenceUsing
	"SoapServiceHandlerTestCase debug: #testInvokeReferenceUsing"
	| handler ret |
	handler := SoapServiceHandler new.
	handler add: self referenceUsingService.
	ret := handler invoke: self referenceUsingEnvelope with: self simpleContext.
	
	self should:[ret size = 2].
	self should:[ret first = 4242].
	self should:[ret second = 'RH1 6NT'].