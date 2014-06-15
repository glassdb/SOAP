*soap-server
fromMIMEDocument: aMIMEDocument

	| content |
	headers := HTTPHeaders new.
	(headers getOrMakeFieldOfClass: HTTPDateField)
		date: SpTimestamp now.
	(headers getOrMakeFieldOfClass: HTTPServerField)
		productTokens: HTTPServer version.
	(headers getOrMakeFieldOfClass: HTTPConnectionField)
		connectionToken: 'close'.
	(headers getOrMakeFieldOfClass: ContentTypeField)
		parseValueFrom: aMIMEDocument contentType.
	content := aMIMEDocument content.
	(headers getOrMakeFieldOfClass: HTTPContentLengthField)
		contentLength: content size.
	messageBody := HyHTTPSizedMessageBody for: self withEntityBody: content asByteArray.
	^self