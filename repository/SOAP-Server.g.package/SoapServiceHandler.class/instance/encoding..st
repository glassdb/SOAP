actions
encoding: aSymbol
	| uris |
	uris := Array with: (SoapEncodingStyleURIMap at: aSymbol).
	^self responseEncoder: (SoapEncoderFactory createFrom: uris).