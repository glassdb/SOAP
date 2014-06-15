private-encoding
encodeRefSoapVariable: aSoapVariable 
	| elem |
	elem := self xmlElementClass named: aSoapVariable name.
	self setXmlAttributesFrom: aSoapVariable into: elem.
	^ elem