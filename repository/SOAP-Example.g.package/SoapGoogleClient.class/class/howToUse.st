documentation
howToUse
	"##GoogleClient is an example that accesses Google Web APIs by SoapOpera.##"
	
	"1: Preparations
	 In order to call Google Web APIs, you need a Google Account license key. (It is free).
	 The license key is obtained from: http://www.google.com/apis/index.html
	 Then, please set the license key by: SoapGoogleClient licenseKey: 'yourkey' 
	"
	
	"2: Usages (explore or print it)
	 SoapGoogleClient new search: 'Google Web APIs Reference'. 
	 SoapGoogleClient new spellingSuggestionOf: 'Smmalltlaak and Soaap'.
	 SoapGoogleClient new cachedPageOf: 'http://www.squeak.org'
	"