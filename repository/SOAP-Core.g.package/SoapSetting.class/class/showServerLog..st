log setting
showServerLog: aBoolean 
	"SoapSetting showServerLog: true"
	"SoapSetting showServerLog: false"
	Smalltalk at: #SoapHTTPModule ifPresent: [:cls | cls showLog: aBoolean].
	Smalltalk at: #SoapHttpModule ifPresent: [:cls | cls showLog: aBoolean].
	Smalltalk at: #SoapSqtpHandler ifPresent: [:cls | cls showLog: aBoolean].