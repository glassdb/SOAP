default values
initDataBindingDict
	self dataBindingDict at: SoapConstants nullEncURI put: SoapNullEncoder.
	self dataBindingDict at: SoapConstants soapEncURI put: SoapEncoder.
	self dataBindingDict at: SoapConstants soapSqEncURI put: SoapSqEncoder.