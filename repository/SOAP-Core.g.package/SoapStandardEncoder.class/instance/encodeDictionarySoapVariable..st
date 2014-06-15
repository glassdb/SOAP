private-encoding
encodeDictionarySoapVariable: aSoapVariable 
	| elem dict |
	elem := self xmlElementClass named: aSoapVariable name.
	dict := aSoapVariable value.
	dict
		keysAndValuesDo: [:k :v | elem
				addChild: (self
						encodeSoapVariable: (SoapVariable name: k asString value: v))].
	self setXmlAttributesFrom: aSoapVariable into: elem.
	^ elem