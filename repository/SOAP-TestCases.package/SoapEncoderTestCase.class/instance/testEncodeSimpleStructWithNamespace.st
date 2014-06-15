testing
testEncodeSimpleStructWithNamespace
	"self debug: #testEncodeSimpleStructWithNamespace"
	| enc ret dic struct |
	enc := SoapEncoder new.
	dic := {#varString -> 'hello'. #varInt -> 42. #varFloat -> 0.6}.
	struct := SoapEncStruct fromAssociations: dic xsdType: 'ns2:SOAPStruct' namespace: 'http://www.aa.com/aaa' .

	ret := enc encodeSoapVariable: (SoapVariable name: 'inputStruct' value: struct).

	self should:[ret name = 'inputStruct'].
	self should:[(ret declaredNamespaceURIFor: 'ns2') = 'http://www.aa.com/aaa'].
	self should:[ret children size = 3].
	self should:[(ret findChildNamed: 'varString') xsiType = SoapConstants xsdStringType].
	self should:[(ret findChildNamed: 'varInt') xsiType = SoapConstants xsdIntegerType].
	self should:[(ret findChildNamed: 'varFloat') xsiType = SoapConstants xsdDoubleType].
	self should:[(ret findChildNamed: 'varString') value = 'hello'].
	self should:[(ret findChildNamed: 'varInt') value = '42'].
	self should:[(ret findChildNamed: 'varFloat') value = '5.9999999999999998E-01'].