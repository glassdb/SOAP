log setting
showingServerLog
	"SoapSetting showingServerLog"
	| results |
	results := OrderedCollection new.
	results add: (Smalltalk at: #SoapHTTPModule ifPresent: [:cls | cls showLog]). 
	results add: (Smalltalk at: #SoapHttpModule ifPresent: [:cls | cls showLog]). 
	results add: (Smalltalk at: #SoapSqtpHandler ifPresent: [:cls | cls showLog]).
	^results includesAnyOf: (Array with: true with: nil)