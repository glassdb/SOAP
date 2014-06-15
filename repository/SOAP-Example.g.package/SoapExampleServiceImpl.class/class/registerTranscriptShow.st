private
registerTranscriptShow
	| impl serv |
	impl := self new.
	serv := SoapService implementor: impl selector: #transcriptShow:.
	serv setSignatureNamed: 'transcriptShow' paramNames: #(aString).
	SoapServiceHandler default add: serv