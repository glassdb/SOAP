actions
decodeXmlElement: aSoapWrapElement 
	| value |
	value := self basicDecodeXmlElement: aSoapWrapElement.
	^value