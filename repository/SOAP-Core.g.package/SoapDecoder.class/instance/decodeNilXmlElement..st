private
decodeNilXmlElement: aSoapWrapElement 
	| xsiNull |
	xsiNull := aSoapWrapElement getAttributeNamed: SoapConstants xsiNil.
	(xsiNull = '1'
			or: [xsiNull = 'true'])
		ifTrue: [^ nil].
	^#NOT:NILL "It is not nil"