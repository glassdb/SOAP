private
remember: anXmlElement for: aSoapVariable 
	| val |
	self useSharedValues ifFalse: [^ self].
	val := aSoapVariable value.
	(self shouldShareValue: val)
		ifTrue: [self referenceDict
				at: (self keyFor: val)
				put: {anXmlElement. aSoapVariable}]