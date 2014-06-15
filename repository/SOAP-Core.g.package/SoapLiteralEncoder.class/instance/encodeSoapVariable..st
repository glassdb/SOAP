actions
encodeSoapVariable: aSoapVariable 
	| type elem |
	type := aSoapVariable value class name.
	(type == #Dictionary
			or: [type == #IdentityDictionary])
		ifTrue: [^ self encodeDictionarySoapVariable: aSoapVariable].
	type == #SoapEncStruct
		ifTrue: [^ self encodeStructSoapVariable: aSoapVariable].
	self complexTypeDict
		at: type
		ifPresent: [:p | ^ self encodeStructSoapVariable: (aSoapVariable
					value: (SoapEncStruct from: aSoapVariable value);
					 yourself)].
	elem := self xmlElementClass named: aSoapVariable name.
	self setXmlAttributesFrom: aSoapVariable into: elem.
	self setXmlElementValue: aSoapVariable into: elem.
	^ elem