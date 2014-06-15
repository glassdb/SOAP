initialize-release
fromArray: anArray named: elemName
	^self fromArray: anArray named: elemName elementType: (SoapConstants xsdAnyType)