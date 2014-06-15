private
setXmlElementNamespace: aSoapVariable into: anXmlElement 
	| ns |
	ns := aSoapVariable namespace.
	ns isNil
		ifFalse: [| prefix | 
			prefix := aSoapVariable guessedPrefix.
			prefix ifNil: [prefix := self autoPrefixTo: anXmlElement].
			anXmlElement declareNamespace: prefix uri: ns].
	^ anXmlElement