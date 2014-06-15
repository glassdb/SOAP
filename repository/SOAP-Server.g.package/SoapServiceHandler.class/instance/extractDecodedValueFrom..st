private
extractDecodedValueFrom: aSoapWrapElement
	| decoder |
	decoder := SoapDecoderFactory createFrom: aSoapWrapElement encodingStyleURIs.
	decoder referenceDict: self referenceDict.
	^decoder decodeXmlElement: aSoapWrapElement