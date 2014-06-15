accessing
style: aSymbol
	"#rpc #document (note that #document is not 'document wrapped style')"
	| symbol |
	symbol := aSymbol asString asLowercase asSymbol.
	(#(#rpc #document) includes: symbol) ifFalse: [symbol := #rpc].
	^style := symbol