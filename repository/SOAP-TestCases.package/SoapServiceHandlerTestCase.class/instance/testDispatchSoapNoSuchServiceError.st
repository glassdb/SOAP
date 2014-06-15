testing
testDispatchSoapNoSuchServiceError

	| handler env fault |
	handler := SoapServiceHandler new.
	handler add: self simpleService.
	env := self errorEnvelope.
	self shouldnt:[env := handler dispatch: env with: self simpleContext.] raise: Error.
	self assert:( env body hasFault).
	
	fault := env body fault.