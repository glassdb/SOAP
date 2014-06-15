testing
testEncodeSimpleStruct
	| enc ret dic |
	enc := SoapEncoder new.
	dic := Dictionary new.
	dic at: #varString put: 'hello'.
	dic at: #varInt put: 42.
	dic at: #varFloat put: 0.6.

	ret := enc encodeSoapVariable: (SoapVariable name: 'inputStruct' value: dic).
	self should:[ret name = 'inputStruct'].
	self should:[ret children size = 3].
	self should:[(ret findChildNamed: 'varString') xsiType = SoapConstants xsdStringType].
	self should:[(ret findChildNamed: 'varInt') xsiType = SoapConstants xsdIntegerType].
	self should:[(ret findChildNamed: 'varFloat') xsiType = SoapConstants xsdDoubleType].
	self should:[(ret findChildNamed: 'varString') value = 'hello'].
	self should:[(ret findChildNamed: 'varInt') value = '42'].
	self should:[(ret findChildNamed: 'varFloat') value = '5.9999999999999998E-01'].