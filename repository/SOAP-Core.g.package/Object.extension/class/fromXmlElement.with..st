*soap-core
fromXmlElement: aSoapXmlElement with: aSoapDecoder
	"Conrtol all deserialization from SoapWrapElement"
	"This is only useful for customized Soap encoding"

	^self new