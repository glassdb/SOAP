accessing
attributesHolder
	attributesHolder isNil ifTrue:[ attributesHolder := SoXmlAttributesHolder new].
	^attributesHolder