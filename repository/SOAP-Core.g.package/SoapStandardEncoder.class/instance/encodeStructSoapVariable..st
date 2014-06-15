private-encoding
encodeStructSoapVariable: aSoapVariable 
	|  struct nm elem xsdType namespace |
	struct := aSoapVariable value.
	nm := aSoapVariable name isEmptyOrNil ifTrue:[struct name] ifFalse:[aSoapVariable name]. 
	elem := self xmlElementClass named: nm.

	xsdType := aSoapVariable xsdType ifNil: [struct xsdType].
	xsdType ifNotNil: [elem xsiType: xsdType].

	namespace := aSoapVariable namespace ifNil: [struct namespace].
	namespace ifNotNil: [| prefix | 
					prefix := aSoapVariable guessedPrefix ifNil: [struct prefix].
					prefix ifNil: [prefix := self autoPrefixTo: elem].
					elem
						declareNamespace: prefix
						uri: namespace].
	struct
		keysAndValuesDo: [:k :v | elem
				addChild: (self
						encodeSoapVariable: (SoapVariable name: k asString value: v))].
	self setXmlAttributesFrom: aSoapVariable into: elem.
	^ elem