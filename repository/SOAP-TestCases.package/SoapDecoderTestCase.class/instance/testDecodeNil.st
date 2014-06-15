testing
testDecodeNil
	"self debug: #testDecodeNil"
	| originalUseNull dec ret |
	[originalUseNull := SoapEncoder useXsiNullAttribute.
	dec := SoapDecoder new.
	SoapEncoder useXsiNullAttribute: true.
	ret := dec
				decodeXmlElement: (SoapWrapElement fromXml: '<value xsd:null="true" />').
	self
		should: [ret = nil]]
		ensure: [SoapEncoder useXsiNullAttribute: originalUseNull]