testing
testEncodeSimpleNamedStruct
	"self debug: #testEncodeSimpleNamedStruct"
	| enc ret dic struct |
	enc := SoapEncoder new.
	dic := {#varString -> 'hello'. #varInt -> 42. #varFloat -> 0.6}.
	struct := SoapEncStruct fromAssociations: dic.

	ret := enc encodeSoapVariable: (SoapVariable name: 'inputStruct' value: struct xsdType: 'SearchResult').
	self should:[ret name = 'inputStruct'].
	self should:[ret xsiType = 'SearchResult'].
	self should:[ret children size = 3].
	self should:[(ret findChildNamed: 'varString') xsiType = SoapConstants xsdStringType].
	self should:[(ret findChildNamed: 'varInt') xsiType = SoapConstants xsdIntegerType].
	self should:[(ret findChildNamed: 'varFloat') xsiType = SoapConstants xsdDoubleType].
	self should:[(ret findChildNamed: 'varString') value = 'hello'].
	self should:[(ret findChildNamed: 'varInt') value = '42'].
	self should:[(ret findChildNamed: 'varFloat') value = '5.9999999999999998E-01'].