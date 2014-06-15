accessing
attributesHolder
	attributesHolder isNil ifTrue:[ attributesHolder := SoapAttributesHolder new].
	^attributesHolder