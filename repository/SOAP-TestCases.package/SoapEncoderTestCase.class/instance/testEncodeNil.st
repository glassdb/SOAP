testing
testEncodeNil
	| originalUseNull enc ret |
	[originalUseNull := SoapEncoder useXsiNullAttribute.
	enc := SoapEncoder new.
	SoapEncoder useXsiNullAttribute: false.
	ret := enc
				encodeSoapVariable: (SoapVariable name: 'auau' value: nil).
	self
		should: [ret = nil].
	SoapEncoder useXsiNullAttribute: true.
	ret := enc
				encodeSoapVariable: (SoapVariable name: 'auau' value: nil).
	self
		should: [ret name = 'auau'].
	self
		should: [(ret getAttributeNamed: SoapConstants xsiNil)
				= 1]]
		ensure: [SoapEncoder useXsiNullAttribute: originalUseNull]