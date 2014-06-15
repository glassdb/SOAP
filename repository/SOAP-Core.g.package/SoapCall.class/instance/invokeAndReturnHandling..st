actions-invoking
invokeAndReturnHandling: handlerBlock 
	^ [self invokeAndReturn]
		on: SoapError , SoapImplError
		do: [:ex | handlerBlock value: ex]