private
callElementFor: aSoapBody 
	| pref callElem |
	(self style == #document and: [self methodName isEmpty]) ifTrue: [^aSoapBody].
	pref := self prefix.
	callElem := self xmlElementClass named: self methodName withPrefix: pref.
	callElem declareNamespace: pref uri: self namespace.
	aSoapBody addBodyEntry: callElem.
	^callElem