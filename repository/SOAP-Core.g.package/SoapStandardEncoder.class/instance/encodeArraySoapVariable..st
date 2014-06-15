private-encoding
encodeArraySoapVariable: aSoapVariable 
	| arr elem allTypes elemType |
	arr := aSoapVariable value.
	arr class name == #SoapEncArray
		ifTrue: [elem :=  arr trimForNested "temporary hack".
				self setXmlAttributesFrom: aSoapVariable into: elem.
				^elem].
	allTypes := arr
				collect: [:each | each class].
	elemType := (allTypes asSet size > 1
					or: [allTypes isEmpty])
				ifTrue: [SoapConstants xsdAnyType]
				ifFalse: [(self possibleTypeAt: allTypes first name) ifNil: [SoapConstants xsdAnyType]].
	
	elem :=  (SoapEncArray encoder: self)
			fromArray: arr
			named: aSoapVariable name
			elementType: elemType
			containerType: aSoapVariable xsdType
			namespace: aSoapVariable namespace.
	
	self setXmlAttributesFrom: aSoapVariable into: elem.
	^elem