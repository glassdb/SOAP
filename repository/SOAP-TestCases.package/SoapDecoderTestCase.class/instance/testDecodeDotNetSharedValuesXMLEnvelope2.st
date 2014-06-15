testing
testDecodeDotNetSharedValuesXMLEnvelope2
	"self debug: #testDecodeDotNetSharedValuesXMLEnvelope2"
	| originalUseDotNetStyleSharedValues envelopeBuilder returnEnvelope message resp value |

	self should: [Smalltalk hasClassNamed: #SoapSampleCustomer].
	SoapSampleCustomer initialize.	

	[originalUseDotNetStyleSharedValues := SoapResponse useDotNetStyleSharedValues.
	SoapResponse useDotNetStyleSharedValues: true.
	envelopeBuilder := SoapEnvelopeBuilder new.
	returnEnvelope := envelopeBuilder buildSoapEnvelopeFromXmlString: self dotNetSharedValuesEnvelopeXML2.
	message := SoapMessage envelope: returnEnvelope.
	resp := SoapResponse fromSoapMessage: message.
	value := resp returnValue.
	self
		should: [value size = 2].
	self
		should: [value first name = 'Ume'].
	self
		should: [value first age = 36].
	self
		should: [value first dateOfBirth
				= (DateAndTime fromString: '1970-11-22T00:00:00-07:00')].
	self
		should: [value second name = 'Ramon'].
	self
		should: [value second age = 31].
	self
		should: [value second dateOfBirth
				= (DateAndTime fromString: '1995-11-22T00:00:00-07:00')]]
		ensure: [SoapResponse useDotNetStyleSharedValues: originalUseDotNetStyleSharedValues]