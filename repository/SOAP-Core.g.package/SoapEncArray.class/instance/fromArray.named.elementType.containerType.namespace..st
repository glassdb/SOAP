initialize-release
fromArray: anArray named: elemName elementType: elementXSDType containerType: arrayXSDType namespace: namespaceURI
	| encPrefix |
	self name: elemName.
	encPrefix := SoapConstants soapEncPrefix.
	self declareNamespace: encPrefix uri: SoapConstants soapEncURI.
	self declareXsdNamespace.
	self declareXsiNamespace.
	(namespaceURI notNil)
		ifTrue: [| prefix | 
			prefix := arrayXSDType isNil
						ifTrue: [SoXmlUtil randomPrefix]
						ifFalse: [SoXmlUtil prefixFrom: arrayXSDType].
			self declareNamespace: prefix uri: namespaceURI].
	self putAttributeNamed: SoapConstants arrayType value: elementXSDType , '[' , anArray size printString , ']'.
	anArray
		do: [:each | (each isNil
					or: [each == #nil])
				ifFalse: [| item child | 
					item := SoapVariable name: 'item' value: each.
					child := (self encoder ifNil: [item encoder]) encodeSoapVariable: item.
					self addChild: child]].