private-encoding
encodePrimitive: aSoapVariable typed: type 
	| elem xsiTypeAttVal |
	xsiTypeAttVal := aSoapVariable xsdType.
	xsiTypeAttVal isNil
		ifTrue: [xsiTypeAttVal := self typeDict
						at: type
						ifAbsent: [SoapEncodingError signal: type printString , '''s encoding is not supported by ' , self class printString]].
	elem := self xmlElementClass named: aSoapVariable name.
	elem xsiType: xsiTypeAttVal asString.
	self setXmlAttributesFrom: aSoapVariable into: elem.
	self setXmlElementValue: aSoapVariable into: elem. 
	self remember: elem for: aSoapVariable.
	^ elem