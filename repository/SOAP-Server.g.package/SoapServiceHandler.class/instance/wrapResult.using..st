private
wrapResult: aResultObject using: aSoapEnvelope 
	|  methodElem resultTagName nsPref nsURI resultMethodElem encoder respElem |
	methodElem := aSoapEnvelope body bodyEntries first.
	resultTagName := methodElem name , 'Response'.
	nsPref := methodElem declaredNamespacePrefixes asArray first.
	nsURI := methodElem declaredNamespaceURIFor: nsPref.
	resultMethodElem := self xmlElementClass named: resultTagName.
	resultMethodElem declareNamespace: nsPref uri: nsURI.
	
	encoder := self selectResponseEncoderFor: methodElem. 
    
	respElem := encoder
				encodeSoapVariable: (SoapVariable name: (SoapConstants returnValueAccessor) value: aResultObject).
	resultMethodElem addChild: respElem.

	aSoapEnvelope body clearBodyEntries.
	aSoapEnvelope body addBodyEntry: resultMethodElem.
	^ aSoapEnvelope