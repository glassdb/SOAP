actions
encoding: aSymbol
	self encodingStyleURI: (SoapEncodingStyleURIMap at: aSymbol).
	self encoder: (SoapEncoderFactory createFrom: self encodingStyleURIs).