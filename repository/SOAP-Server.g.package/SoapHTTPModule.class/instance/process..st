processing
process: request
	| rawXml soapContext soapEnvelope returnEnvelope returnXml |
	
	(((request headers fieldOfClass: ContentTypeField) mediaType, '*') match: MIMEDocument contentTypeXml)
		ifFalse:[Transcript cr; show: '##Content type is not text/xml: ',  (request headers fieldOfClass: ContentTypeField) mediaType printString. ^nil].
	rawXml := request entityBody. "body"
	rawXml := SoPortableUtil convertString: rawXml from: SoapSetting stringEncoding.
	self class showLog ifTrue: [Transcript cr; show: '##' , super printString ,' Server:Request:{ ', rawXml printString, '} '. ].
	
	soapContext := SoapContext new.
	request uri path = '/' ifFalse: [soapContext targetObjectURI: request uri path.].  "maybe method namespace"
	soapContext soapAction: (SoapAction intent: (request headers fieldNamed: 'SOAPACTION' ifNone:[])).
	
	soapEnvelope := self envelopeBuilder buildSoapEnvelopeFromXmlString: rawXml.
	
	returnEnvelope := soapEnvelope hasFault 
		ifTrue: [ soapEnvelope ] 
		ifFalse: [ SoapServiceHandler default dispatch: soapEnvelope with: soapContext.].

	returnXml := SoXmlUtil contentsWithXmlDeclaration: returnEnvelope printXmlString.
	
	self class showLog ifTrue: [Transcript cr; show: '##' , super printString ,' Server:Return:{ ', returnXml printString, '} '. ].

	^HTTPResponse fromMIMEDocument: 
		(MIMEDocument contentType: 'text/xml' content: returnXml)