private
wrapResult: aResultObject
	|  methodElem resultTagName nsPref nsURI resultMethodElem encoder respElem |
	methodElem := self envelope body bodyEntries first.
	resultTagName := methodElem name , 'Response'.
	nsPref := methodElem declaredNamespacePrefixes asArray first.
	nsURI := methodElem declaredNamespaceURIFor: nsPref.
	resultMethodElem := self xmlElementClass named: resultTagName.
	resultMethodElem declareNamespace: nsPref uri: nsURI.
	
	encoder := self context encodingStyleURIs isEmpty ifFalse: [SoapEncoderFactory createFrom: self context encodingStyleURIs]
				ifTrue: [ SoapEncoderFactory createFrom: methodElem encodingStyleURIs].
    
	respElem := encoder
				encodeSoapVariable: (SoapVariable name: (SoapConstants returnValueAccessor) value: aResultObject).
	resultMethodElem addChild: respElem.

	self envelope body clearBodyEntries.
	self envelope body addBodyEntry: resultMethodElem.
	^ self envelope