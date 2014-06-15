private
convertedAsRef: aSoapVariable 
	| val pair masterXmlElem originalVar sharedId refVar |
	self useSharedValues ifFalse: [^ nil].
	val := aSoapVariable value.
	(self shouldShareValue: val) ifFalse: [^nil].
	pair := self referenceDict at: (self keyFor: val) ifAbsent: [^ nil].

	masterXmlElem := pair first.
	originalVar := pair second.

	sharedId := self keyFor: originalVar.
	refVar := SoapVariable name: aSoapVariable name hrefId: sharedId.
	masterXmlElem id: sharedId.
	^ refVar