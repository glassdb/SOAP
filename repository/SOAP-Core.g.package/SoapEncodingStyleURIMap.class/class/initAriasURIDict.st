default values
initAriasURIDict
	self ariasURIDict at: #nullEncoding put: SoapConstants nullEncURI.
	self ariasURIDict at: #soapEncoding put: SoapConstants soapEncURI.
	self ariasURIDict at: #soapSqEncoding put: SoapConstants soapSqEncURI.