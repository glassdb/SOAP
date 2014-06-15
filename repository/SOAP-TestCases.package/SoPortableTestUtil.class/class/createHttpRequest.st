actions
createHttpRequest
	
	| req |
	req := HTTPRequest readFrom: self httpRequestHeaderString asByteArray readStream.
	req requestLine method: 'POST'.
	req requestLine requestURI path: '/SomeTarget'.
	^req