default values
initDataBindingDict
	self dataBindingDict at: SoapConstants nullEncURI put: SoapNullDecoder.
	self dataBindingDict at: SoapConstants soapEncURI put: SoapDecoder.
	self dataBindingDict at: SoapConstants soapSqEncURI put: SoapSqDecoder.