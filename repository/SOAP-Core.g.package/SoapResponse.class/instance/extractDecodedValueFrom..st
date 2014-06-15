private
extractDecodedValueFrom: aSoapWrapElement
	| decoder |
	aSoapWrapElement isNil ifTrue:[^nil].
	decoder := self decoderFrom: aSoapWrapElement.
	decoder referenceDict: self referenceDict.
	^decoder decodeXmlElement: aSoapWrapElement